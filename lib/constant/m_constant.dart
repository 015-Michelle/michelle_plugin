import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:michelle_plugin/utils/size_util.dart';

///----基本类型
class MType {
  static const String text = 'MText';
  static const String image = 'MImage';
  static const String product = 'MProduct';
  static const String banner = 'MBanner';
  static const String kingKongArea = 'MKingKongArea';
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

//----样式类型
class MWidgetStyleType {
  static const String discount = 'discount';
  static const String coupon = 'coupon';
  static const String content = 'content';
  static const String tag = 'tag';
  static const String platform = 'platform';
  static const String price = 'price';
  static const String originalPrice = 'originalPrice';
}

//----组件类型
class MImageType {
  //固定组合
  static const String one = '1-1';
  static const String two = '1-2';
  static const String three = '1-3';
  static const String twoRTwoC = '2-2';
  static const String one_two = '1&2';
  static const String scroll = "scroll";
}

//对齐方式
class MAlign {
  static const String left = 'left';
  static const String right = 'right';
  static const String center = 'center';
}

//----转换方法
FontWeight? convertStringToFontWeight(String? fontWeight) {
  switch (fontWeight) {
    case MFontWeightType.normal:
      return FontWeight.normal;
    case MFontWeightType.bold:
      return FontWeight.bold;
    default:
      return FontWeight.normal;
  }
}

double? convertStringToFontSize(String? fontSize) {
  switch (fontSize) {
    case MFontSizeType.small:
      return 16.a;
    case MFontSizeType.medium:
      return 20.a;
    case MFontSizeType.large:
      return 24.a;
    default:
      return 20.a;
  }
}

AlignmentGeometry getAlignmentGeometry(String? align) {
  switch (align) {
    case 'left':
      return Alignment.centerLeft;
    case 'right':
      return Alignment.centerRight;
    case 'center':
      return Alignment.center;
    default:
      return Alignment.centerRight;
  }
}

TextOverflow? getTextOverflow(String align) {
  switch (align) {
    case 'clip':
      return TextOverflow.clip;
    case 'ellipsis':
      return TextOverflow.ellipsis;
    case 'visible':
      return TextOverflow.visible;
    case 'fade':
      return TextOverflow.fade;
    default:
      return null;
  }
}

TextDecoration? getTextDecoration(String? textDecoration) {
  switch (textDecoration) {
    case "center":
      return TextDecoration.lineThrough;
    case "top":
      return TextDecoration.overline;
    case "bottom":
      return TextDecoration.underline;
    default:
      return TextDecoration.none;
  }
}

TextDecorationStyle? getTextDecorationStyle(String? textDecorationStyle) {
  switch (textDecorationStyle) {
    case "double":
      return TextDecorationStyle.double;
    case "wavy":
      return TextDecorationStyle.wavy;
    case "dashed":
      return TextDecorationStyle.dashed;
    case "dotted":
      return TextDecorationStyle.dotted;
    default:
      return TextDecorationStyle.solid;
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
