// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_style_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MCardBorderRadius _$MCardBorderRadiusFromJson(Map<String, dynamic> json) =>
    MCardBorderRadius(
      json['topLeft'] as num,
      json['topRight'] as num,
      json['bottomLeft'] as num,
      json['bottomRight'] as num,
    );

Map<String, dynamic> _$MCardBorderRadiusToJson(MCardBorderRadius instance) =>
    <String, dynamic>{
      'topLeft': instance.topLeft,
      'topRight': instance.topRight,
      'bottomLeft': instance.bottomLeft,
      'bottomRight': instance.bottomRight,
    };

MItemBorderRadius _$MItemBorderRadiusFromJson(Map<String, dynamic> json) =>
    MItemBorderRadius(
      json['topLeft'] as num,
      json['topRight'] as num,
      json['bottomLeft'] as num,
      json['bottomRight'] as num,
    );

Map<String, dynamic> _$MItemBorderRadiusToJson(MItemBorderRadius instance) =>
    <String, dynamic>{
      'topLeft': instance.topLeft,
      'topRight': instance.topRight,
      'bottomLeft': instance.bottomLeft,
      'bottomRight': instance.bottomRight,
    };

MItemPadding _$MItemPaddingFromJson(Map<String, dynamic> json) => MItemPadding(
      json['top'] as num,
      json['right'] as num,
      json['bottom'] as num,
      json['left'] as num,
    );

Map<String, dynamic> _$MItemPaddingToJson(MItemPadding instance) =>
    <String, dynamic>{
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
      'left': instance.left,
    };

MItemMargin _$MItemMarginFromJson(Map<String, dynamic> json) => MItemMargin(
      json['top'] as num,
      json['right'] as num,
      json['bottom'] as num,
      json['left'] as num,
    );

Map<String, dynamic> _$MItemMarginToJson(MItemMargin instance) =>
    <String, dynamic>{
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
      'left': instance.left,
    };

MTextStyle _$MTextStyleFromJson(Map<String, dynamic> json) => MTextStyle(
      json['color'] as String,
      json['background'] as String,
      json['fontSize'] as String,
      json['fontWeight'] as String,
    );

Map<String, dynamic> _$MTextStyleToJson(MTextStyle instance) =>
    <String, dynamic>{
      'color': instance.color,
      'background': instance.background,
      'fontSize': instance.fontSize,
      'fontWeight': instance.fontWeight,
    };
