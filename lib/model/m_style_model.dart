import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:michelle_plugin/constant/m_constant.dart';
import 'package:michelle_plugin/utils/color_util.dart';

part 'm_style_model.g.dart';

@JsonSerializable()
class MCardBorderRadius {
  num topLeft;
  num topRight;
  num bottomLeft;
  num bottomRight;

  MCardBorderRadius(
    this.topLeft,
    this.topRight,
    this.bottomLeft,
    this.bottomRight,
  );

  factory MCardBorderRadius.fromJson(Map<String, dynamic> srcJson) =>
      _$MCardBorderRadiusFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MCardBorderRadiusToJson(this);
}

@JsonSerializable()
class MItemBorderRadius {
  num topLeft;
  num topRight;
  num bottomLeft;
  num bottomRight;

  MItemBorderRadius(
    this.topLeft,
    this.topRight,
    this.bottomLeft,
    this.bottomRight,
  );

  factory MItemBorderRadius.fromJson(Map<String, dynamic> srcJson) =>
      _$MItemBorderRadiusFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MItemBorderRadiusToJson(this);
}

@JsonSerializable()
class MItemPadding {
  num top;
  num right;
  num bottom;
  num left;

  MItemPadding(
    this.top,
    this.right,
    this.bottom,
    this.left,
  );

  factory MItemPadding.fromJson(Map<String, dynamic> srcJson) => _$MItemPaddingFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MItemPaddingToJson(this);
}

@JsonSerializable()
class MItemMargin {
  num top;
  num right;
  num bottom;
  num left;

  MItemMargin(
    this.top,
    this.right,
    this.bottom,
    this.left,
  );

  factory MItemMargin.fromJson(Map<String, dynamic> srcJson) => _$MItemMarginFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MItemMarginToJson(this);
}

@JsonSerializable()
class MTextStyle {
  String? color;
  String? background;
  String? fontSize;
  String? fontWeight;
  MTextDecoration? mTextDecoration;

  MTextStyle(
    this.color,
    this.background,
    this.fontSize,
    this.fontWeight,
  );

  factory MTextStyle.fromJson(Map<String, dynamic> srcJson) => _$MTextStyleFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MTextStyleToJson(this);

  TextStyle convertToTextStyle(BuildContext context) {
    return TextStyle(
      color: ColorUtil.parseRGBA(color),
      fontSize: convertStringToFontSize(fontSize),
      fontWeight: convertStringToFontWeight(fontWeight),
      decoration: getTextDecoration(mTextDecoration?.line),
      decorationStyle: getTextDecorationStyle(mTextDecoration?.lineStyle),
      decorationColor: ColorUtil.parseRGBA(mTextDecoration?.lineColor),
    );
  }
}

@JsonSerializable()
class MTextDecoration {
  String line;
  String lineColor;
  String lineStyle;

  MTextDecoration(this.line, this.lineColor, this.lineStyle);

  factory MTextDecoration.fromJson(Map<String, dynamic> srcJson) =>
      _$MTextDecorationFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MTextDecorationToJson(this);
}
