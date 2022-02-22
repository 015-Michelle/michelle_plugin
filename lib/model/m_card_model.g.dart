// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MCardModel _$MCardModelFromJson(Map<String, dynamic> json) => MCardModel(
      backgroundColor: json['backgroundColor'] as String?,
      mItemBorderRadius: json['mItemBorderRadius'] == null
          ? null
          : MItemBorderRadius.fromJson(
              json['mItemBorderRadius'] as Map<String, dynamic>),
      mItemPadding: json['mItemPadding'] == null
          ? null
          : MItemPadding.fromJson(json['mItemPadding'] as Map<String, dynamic>),
      mItemMargin: json['mItemMargin'] == null
          ? null
          : MItemMargin.fromJson(json['mItemMargin'] as Map<String, dynamic>),
      borderColor: json['borderColor'] as String?,
      gradientColors: (json['gradientColors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      backgroundImage: json['backgroundImage'] as String?,
    );

Map<String, dynamic> _$MCardModelToJson(MCardModel instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'mItemBorderRadius': instance.mItemBorderRadius,
      'mItemPadding': instance.mItemPadding,
      'mItemMargin': instance.mItemMargin,
      'borderColor': instance.borderColor,
      'gradientColors': instance.gradientColors,
      'backgroundImage': instance.backgroundImage,
    };
