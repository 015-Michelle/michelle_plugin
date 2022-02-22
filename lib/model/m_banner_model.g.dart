// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MBannerModel _$MBannerModelFromJson(Map<String, dynamic> json) => MBannerModel(
      (json['imageList'] as List<dynamic>)
          .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      MItemBorderRadius.fromJson(
          json['mItemBorderRadius'] as Map<String, dynamic>),
      MItemPadding.fromJson(json['mItemPadding'] as Map<String, dynamic>),
      MItemMargin.fromJson(json['mItemMargin'] as Map<String, dynamic>),
      backgroundImage: json['backgroundImage'] as String?,
      indicatorColor: json['indicatorColor'] as String?,
      indicatorRadius: json['indicatorRadius'] as num?,
    );

Map<String, dynamic> _$MBannerModelToJson(MBannerModel instance) =>
    <String, dynamic>{
      'imageList': instance.imageList,
      'backgroundImage': instance.backgroundImage,
      'mItemBorderRadius': instance.mItemBorderRadius,
      'mItemPadding': instance.mItemPadding,
      'mItemMargin': instance.mItemMargin,
      'indicatorColor': instance.indicatorColor,
      'indicatorRadius': instance.indicatorRadius,
    };
