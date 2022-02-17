import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:michelle_plugin/utils/size_util.dart';

///----类型
class MType {
  static const String text = 'MText';
  static const String image = 'MImage';
  static const String product = 'MProduct';
}

class MFontWeightType {
  static const String normal = 'normal';
  static const String bold = 'bold';
}

class MFontSizeType {
  static const String small = 'small';
  static const String medium = 'medium';
  static const String large = 'large';
}

//字体大小
class MFontSize {
  static double small = 12.a;
  static double medium = 14.a;
  static double large = 16.a;
}

//对齐方式
class MAlign {
  static const String left = 'left';
  static const String right = 'right';
  static const String center = 'center';
}

//----转换方法
FontWeight? convertStringToFontWeight(String fontWeight) {
  switch (fontWeight) {
    case MFontWeightType.normal:
      return FontWeight.normal;
    case MFontWeightType.bold:
      return FontWeight.bold;
    default:
      return FontWeight.normal;
  }
}

double? convertStringToFontSize(String fontSize) {
  switch (fontSize) {
    case MFontSizeType.small:
      return MFontSize.small;
    case MFontSizeType.medium:
      return MFontSize.medium;
    case MFontSizeType.large:
      return MFontSize.large;
    default:
      return MFontSize.medium;
  }
}

TextAlign getStringAlign(String align) {
  switch (align) {
    case 'left':
      return TextAlign.start;
    case 'right':
      return TextAlign.end;
    case 'center':
      return TextAlign.center;
    default:
      return TextAlign.start;
  }
}

WrapAlignment getWrapAlign(String align) {
  switch (align) {
    case 'left':
      return WrapAlignment.start;
    case 'right':
      return WrapAlignment.end;
    case 'center':
      return WrapAlignment.center;
    default:
      return WrapAlignment.start;
  }
}

WrapCrossAlignment getWrapCrossAlign(String align) {
  switch (align) {
    case 'left':
      return WrapCrossAlignment.start;
    case 'right':
      return WrapCrossAlignment.end;
    case 'center':
      return WrapCrossAlignment.center;
    default:
      return WrapCrossAlignment.start;
  }
}

CrossAxisAlignment getColumnAlign(String align) {
  switch (align) {
    case 'left':
      return CrossAxisAlignment.start;
    case 'right':
      return CrossAxisAlignment.end;
    case 'center':
      return CrossAxisAlignment.center;
    default:
      return CrossAxisAlignment.start;
  }
}

double? convertStringToPadding(String padding) {
  return double.parse(padding);
}

double? convertStringToMargin(String margin) {
  return double.parse(margin);
}
