import 'dart:async';

import 'package:flutter/services.dart';

class QiyuLy {
  static const MethodChannel _channel = const MethodChannel('qiyu_ly');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> jumpPage() async {
    final String result = await _channel.invokeMethod("jumpPage");
    return result;
  }
}
