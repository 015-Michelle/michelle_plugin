// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_text_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MTextModel _$MTextModelFromJson(Map<String, dynamic> json) => MTextModel(
      json['data'] as String,
      style: json['style'] == null
          ? null
          : MTextStyle.fromJson(json['style'] as Map<String, dynamic>),
      textAlign: json['textAlign'] as String?,
      softWrap: json['softWrap'] as bool?,
      overflow: json['overflow'] as String?,
      textScaleFactor: (json['textScaleFactor'] as num?)?.toDouble(),
      maxLines: json['maxLines'] as int?,
      semanticsLabel: json['semanticsLabel'] as String?,
      textWidthBasis: json['textWidthBasis'] as String?,
      mCardModel: json['mCardModel'] == null
          ? null
          : MCardModel.fromJson(json['mCardModel'] as Map<String, dynamic>),
      mTextDecoration: json['mTextDecoration'] == null
          ? null
          : MTextDecoration.fromJson(
              json['mTextDecoration'] as Map<String, dynamic>),
      event: json['event'] == null
          ? null
          : MEvent.fromJson(json['event'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MTextModelToJson(MTextModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'style': instance.style,
      'textAlign': instance.textAlign,
      'softWrap': instance.softWrap,
      'overflow': instance.overflow,
      'textScaleFactor': instance.textScaleFactor,
      'maxLines': instance.maxLines,
      'semanticsLabel': instance.semanticsLabel,
      'textWidthBasis': instance.textWidthBasis,
      'mCardModel': instance.mCardModel,
      'mTextDecoration': instance.mTextDecoration,
      'event': instance.event,
    };
