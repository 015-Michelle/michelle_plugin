// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MImageModel _$MImageModelFromJson(Map<String, dynamic> json) => MImageModel(
      json['styleType'] as String,
      json['spaceBetween'] as num,
      json['backgroundColor'] as String,
      (json['picList'] as List<dynamic>)
          .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      MItemBorderRadius.fromJson(
          json['mItemBorderRadius'] as Map<String, dynamic>),
      MItemPadding.fromJson(json['mItemPadding'] as Map<String, dynamic>),
      MItemMargin.fromJson(json['mItemMargin'] as Map<String, dynamic>),
      mCardModel: json['mCardModel'] == null
          ? null
          : MCardModel.fromJson(json['mCardModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MImageModelToJson(MImageModel instance) =>
    <String, dynamic>{
      'styleType': instance.styleType,
      'spaceBetween': instance.spaceBetween,
      'backgroundColor': instance.backgroundColor,
      'picList': instance.picList,
      'mItemBorderRadius': instance.mItemBorderRadius,
      'mItemPadding': instance.mItemPadding,
      'mItemMargin': instance.mItemMargin,
      'mCardModel': instance.mCardModel,
    };

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) => ImageModel(
      json['url'] as String,
      json['imgWidth'] as num?,
      json['imgHeight'] as num?,
      event: json['event'] == null
          ? null
          : MEvent.fromJson(json['event'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImageModelToJson(ImageModel instance) =>
    <String, dynamic>{
      'url': instance.url,
      'imgWidth': instance.imgWidth,
      'imgHeight': instance.imgHeight,
      'event': instance.event,
    };
