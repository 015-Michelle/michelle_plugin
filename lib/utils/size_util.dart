import 'dart:ui';

import 'package:flutter/material.dart';

//自动适配工具
class SizeUtil {
  //屏幕宽高
  static double screenWidth = 0;
  static double screenHeight = 0;

  //设计宽度，默认375dp
  static double designWidth = 375;

  //
  static double scaleRate = 1;
  //屏幕像素宽高
  static double screenWidthPx = 0;
  static double screenHeightPx = 0;

  static init({double designWidth = 375}) {
    MediaQueryData queryData = MediaQueryData.fromWindow(window);
    Size size = queryData.size;
    screenWidth = size.width;
    screenHeight = size.height;

    //可以由外面重新给designWidth赋值
    SizeUtil.designWidth = designWidth;

    if (screenWidth < designWidth) {
      scaleRate = screenWidth / designWidth;
    }

    screenWidthPx = screenWidth * queryData.devicePixelRatio;
    screenHeightPx = screenHeight * queryData.devicePixelRatio;
  }
}

extension SizeUtilExt on num {
  //大屏按scaleRate适配
  dynamic get a => this * SizeUtil.scaleRate;

  //小屏缩放
  dynamic get s => this * SizeUtil.screenWidth / SizeUtil.designWidth;
}
