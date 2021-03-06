import 'package:flutter/material.dart';
import 'package:michelle_plugin/constant/m_transparent_image.dart';
import 'package:michelle_plugin/model/m_style_model.dart';
import 'package:michelle_plugin/utils/m_local_cache_network_image.dart';
import 'package:michelle_plugin/utils/size_util.dart';

class MCachedImage extends StatelessWidget {
  final double? imgWidth;
  final double? imgHeight;
  final double? padding;
  final String url;
  final Color? color;
  final BoxFit? boxFit;
  final bool isShowError;
  final MItemBorderRadius? mItemBorderRadius;

  const MCachedImage({
    Key? key,
    this.imgWidth,
    this.imgHeight,
    this.padding,
    required this.url,
    this.color,
    this.boxFit,
    required this.isShowError,
    this.mItemBorderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: mItemBorderRadius == null
          ? BorderRadius.zero
          : BorderRadius.only(
              topLeft: Radius.circular(mItemBorderRadius!.topLeft.toDouble()),
              topRight: Radius.circular(mItemBorderRadius!.topRight.toDouble()),
              bottomLeft: Radius.circular(mItemBorderRadius!.bottomLeft.toDouble()),
              bottomRight: Radius.circular(mItemBorderRadius!.bottomRight.toDouble()),
            ),
      child: Container(
        color: color,
        width: imgWidth?.toDouble().a,
        height: imgHeight?.toDouble().a,
        child: Image(
          image: MLocalCacheNetworkImage(url),
          loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
            return loadingProgress == null ? child : Image.memory(mTransparentImage);
          },
          errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
            return isShowError
                ? Center(
                    child: Icon(
                      Icons.error,
                      color: Colors.black.withOpacity(0.08),
                    ),
                  )
                : Container();
          },
          fit: boxFit ?? BoxFit.cover,
        ),
      ),
    );
  }
}
