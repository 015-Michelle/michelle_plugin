// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_event_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MEvent _$MEventFromJson(Map<String, dynamic> json) => MEvent(
      $enumDecode(_$MEventTypeEnumMap, json['type']),
      json['arguments'] as String,
      eventElse: json['eventElse'] as List<dynamic>?,
    );

Map<String, dynamic> _$MEventToJson(MEvent instance) => <String, dynamic>{
      'type': _$MEventTypeEnumMap[instance.type],
      'arguments': instance.arguments,
      'eventElse': instance.eventElse,
    };

const _$MEventTypeEnumMap = {
  MEventType.url: 'url',
  MEventType.appPage: 'appPage',
  MEventType.custom: 'custom',
  MEventType.empty: 'empty',
  MEventType.copyAndLink: 'copyAndLink',
};
