// Copy NetworkImage and modify it based on it

import 'dart:async';
import 'dart:convert' as convert;
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:crypto/crypto.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

/// The dart:io implementation of [NetworkImage].
@immutable
class MLocalCacheNetworkImage extends ImageProvider<NetworkImage> implements NetworkImage {
  /// Creates an object that fetches the image at the given URL.
  ///
  /// The arguments [url] and [scale] must not be null.
  const MLocalCacheNetworkImage(this.url, {this.scale = 1.0, this.headers})
      : assert(url != null),
        assert(scale != null);

  @override
  final String url;

  @override
  final double scale;

  @override
  final Map<String, String>? headers;

  @override
  Future<NetworkImage> obtainKey(ImageConfiguration configuration) {
    return SynchronousFuture<NetworkImage>(this);
  }

  @override
  ImageStreamCompleter load(NetworkImage key, DecoderCallback decode) {
    // Ownership of this controller is handed off to [_loadAsync]; it is that
    // method's responsibility to close the controller's stream when the image
    // has been loaded or an error is thrown.
    final StreamController<ImageChunkEvent> chunkEvents = StreamController<ImageChunkEvent>();

    return MultiFrameImageStreamCompleter(
      codec: _loadAsync(key, chunkEvents, decode),
      chunkEvents: chunkEvents.stream,
      scale: key.scale,
      debugLabel: key.url,
      informationCollector: () {
        return <DiagnosticsNode>[
          DiagnosticsProperty<ImageProvider>('Image provider', this),
          DiagnosticsProperty<NetworkImage>('Image key', key),
        ];
      },
    );
  }

  // Do not access this field directly; use [_httpClient] instead.
  // We set `autoUncompress` to false to ensure that we can trust the value of
  // the `Content-Length` HTTP header. We automatically uncompress the content
  // in our call to [consolidateHttpClientResponseBytes].
  static final HttpClient _sharedHttpClient = HttpClient()..autoUncompress = false;

  static HttpClient get _httpClient {
    HttpClient client = _sharedHttpClient;
    assert(() {
      if (debugNetworkImageHttpClientProvider != null)
        client = debugNetworkImageHttpClientProvider!();
      return true;
    }());
    return client;
  }

  Future<ui.Codec> _loadAsync(
    NetworkImage key,
    StreamController<ImageChunkEvent> chunkEvents,
    DecoderCallback decode,
  ) async {
    try {
      assert(key == this);

      /// [ttm] ????????????????????????????????????????????????
      final Uint8List? cachedBytes = await _getImageFromLocal(key.url);
      if (cachedBytes != null &&
          cachedBytes.lengthInBytes != null &&
          cachedBytes.lengthInBytes != 0) {
        return await PaintingBinding.instance!.instantiateImageCodec(cachedBytes);
      }

      final Uri resolved = Uri.base.resolve(key.url);

      final HttpClientRequest request = await _httpClient.getUrl(resolved);

      headers?.forEach((String name, String value) {
        request.headers.add(name, value);
      });
      final HttpClientResponse response = await request.close();
      if (response.statusCode != HttpStatus.ok) {
        // The network may be only temporarily unavailable, or the file will be
        // added on the server later. Avoid having future calls to resolve
        // fail to check the network again.
        await response.drain<List<int>>();
        throw NetworkImageLoadException(statusCode: response.statusCode, uri: resolved);
      }

      final Uint8List bytes = await consolidateHttpClientResponseBytes(
        response,
        onBytesReceived: (int cumulative, int? total) {
          chunkEvents.add(ImageChunkEvent(
            cumulativeBytesLoaded: cumulative,
            expectedTotalBytes: total,
          ));
        },
      );

      /// [ttm] ????????????????????????????????????????????????
      if (bytes.lengthInBytes != 0) {
        _saveImageToLocal(bytes, key.url);
      }

      if (bytes.lengthInBytes == 0) throw Exception('NetworkImage is an empty file: $resolved');

      return decode(bytes);
    } catch (e) {
      // Depending on where the exception was thrown, the image cache may not
      // have had a chance to track the key in the cache at all.
      // Schedule a microtask to give the cache a chance to add the key.
      scheduleMicrotask(() {
        PaintingBinding.instance!.imageCache!.evict(key);
      });
      rethrow;
    } finally {
      chunkEvents.close();
    }
  }

  /// [ttm]??????????????????MD5??????????????????????????????
  void _saveImageToLocal(Uint8List mUInt8List, String name) async {
    String path = await _getCachePathString(name);
    var file = File(path);
    bool exist = await file.exists();
    if (!exist) {
      File(path).writeAsBytesSync(mUInt8List);
    }
  }

  /// [ttm]??????????????????
  Future<Uint8List?> _getImageFromLocal(String name) async {
    String path = await _getCachePathString(name);
    var file = File(path);
    bool exist = await file.exists();
    if (exist) {
      final Uint8List bytes = await file.readAsBytes();
      return bytes;
    }
    return null;
  }

  // [ttm]????????????????????????????????????
  Future<String> _getCachePathString(String name) async {
    // ?????????????????????
    String filePathFileName = md5.convert(convert.utf8.encode(name)).toString();
    String extensionName = name.split('/').last.split('.').last;

    // print('??????url:$name');
    // print('filePathFileName:$filePathFileName');
    // print('extensionName:$extensionName');

    // ?????????????????????????????????
    final tempDic = await getTemporaryDirectory();
    Directory directory = Directory(tempDic.path + '/CacheImage/');
    bool isFoldExist = await directory.exists();
    if (!isFoldExist) {
      await directory.create();
    }
    return directory.path + filePathFileName + '.$extensionName';
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is NetworkImage && other.url == url && other.scale == scale;
  }

  @override
  int get hashCode => ui.hashValues(url, scale);

  @override
  String toString() => '${objectRuntimeType(this, 'NetworkImage')}("$url", scale: $scale)';
}
