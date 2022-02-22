// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_kingkong_area_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MKingKongAreaModel _$MKingKongAreaModelFromJson(Map<String, dynamic> json) =>
    MKingKongAreaModel(
      json['titleColor'] as String,
      (json['iconPageList'] as List<dynamic>)
          .map((e) => IconPageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['shrinkWrap'] as bool,
      indicatorModel: json['indicatorModel'] == null
          ? null
          : IndicatorModel.fromJson(
              json['indicatorModel'] as Map<String, dynamic>),
      mItemMargin:
          MItemMargin.fromJson(json['mItemMargin'] as Map<String, dynamic>),
      mItemPadding:
          MItemPadding.fromJson(json['mItemPadding'] as Map<String, dynamic>),
      mItemBorderRadius: json['mItemBorderRadius'] == null
          ? null
          : MItemBorderRadius.fromJson(
              json['mItemBorderRadius'] as Map<String, dynamic>),
      spaceBetween: json['spaceBetween'] as num?,
      mCardModel: json['mCardModel'] == null
          ? null
          : MCardModel.fromJson(json['mCardModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MKingKongAreaModelToJson(MKingKongAreaModel instance) =>
    <String, dynamic>{
      'titleColor': instance.titleColor,
      'indicatorModel': instance.indicatorModel,
      'iconPageList': instance.iconPageList,
      'shrinkWrap': instance.shrinkWrap,
      'mItemBorderRadius': instance.mItemBorderRadius,
      'mItemMargin': instance.mItemMargin,
      'mItemPadding': instance.mItemPadding,
      'spaceBetween': instance.spaceBetween,
      'mCardModel': instance.mCardModel,
    };

IconPageModel _$IconPageModelFromJson(Map<String, dynamic> json) =>
    IconPageModel(
      json['pageTitle'] as String,
      (json['iconGroupList'] as List<dynamic>)
          .map((e) => IconGroupModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IconPageModelToJson(IconPageModel instance) =>
    <String, dynamic>{
      'pageTitle': instance.pageTitle,
      'iconGroupList': instance.iconGroupList,
    };

IconGroupModel _$IconGroupModelFromJson(Map<String, dynamic> json) =>
    IconGroupModel(
      json['type'] as String,
      json['title'] as String,
      json['url'] as String,
      desc: json['desc'] as String?,
      event: json['event'] == null
          ? null
          : MEvent.fromJson(json['event'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IconGroupModelToJson(IconGroupModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'desc': instance.desc,
      'url': instance.url,
      'event': instance.event,
    };

IndicatorModel _$IndicatorModelFromJson(Map<String, dynamic> json) =>
    IndicatorModel(
      indicatorColor: json['indicatorColor'] as String?,
      indicatorRadius: json['indicatorRadius'] as num?,
    );

Map<String, dynamic> _$IndicatorModelToJson(IndicatorModel instance) =>
    <String, dynamic>{
      'indicatorColor': instance.indicatorColor,
      'indicatorRadius': instance.indicatorRadius,
    };
