// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MPageModel _$MPageModelFromJson(Map<String, dynamic> json) => MPageModel(
      json['id'] as String,
      PageInfoModel.fromJson(json['pageInfoModel'] as Map<String, dynamic>),
      json['layout'] as List<dynamic>,
    );

Map<String, dynamic> _$MPageModelToJson(MPageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pageInfoModel': instance.pageInfoModel,
      'layout': instance.layout,
    };

PageInfoModel _$PageInfoModelFromJson(Map<String, dynamic> json) =>
    PageInfoModel(
      json['title'] as String,
      json['description'] as String,
      json['backgroundColor'] as String,
    );

Map<String, dynamic> _$PageInfoModelToJson(PageInfoModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'backgroundColor': instance.backgroundColor,
    };
