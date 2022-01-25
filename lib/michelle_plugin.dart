
import 'dart:async';

import 'package:flutter/services.dart';

class MichellePlugin {
  static const MethodChannel _channel = MethodChannel('michelle_plugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
