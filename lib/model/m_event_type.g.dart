// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_event_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MEvent _$MEventFromJson(Map<String, dynamic> json) => MEvent(
      $enumDecode(_$MEventTypeEnumMap, json['type']),
      json['config'] as String,
      name: json['name'] as String?,
      tag: json['tag'] as String?,
      eventElse: json['eventElse'] as List<dynamic>?,
    );

Map<String, dynamic> _$MEventToJson(MEvent instance) => <String, dynamic>{
      'type': _$MEventTypeEnumMap[instance.type],
      'config': instance.config,
      'name': instance.name,
      'tag': instance.tag,
      'eventElse': instance.eventElse,
    };

const _$MEventTypeEnumMap = {
  MEventType.url: 'url',
  MEventType.product: 'product',
  MEventType.custom: 'custom',
  MEventType.empty: 'empty',
  MEventType.copyAndLink: 'copyAndLink',
};
