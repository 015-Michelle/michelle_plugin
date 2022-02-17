import 'package:json_annotation/json_annotation.dart';

part 'm_event_type.g.dart';

enum MEventType {
  url,
  product,
  custom,
  empty,
  copyAndLink,
}

MEventType _convertStringToEventType(String type) {
  return MEventType.values.firstWhere(
    (element) => element.toString().split('.').last == type,
    orElse: () => MEventType.empty,
  );
}

@JsonSerializable()
class MEvent {
  //事件类型
  MEventType type;
  //参数
  String config;
  String? name;
  //打点属性
  String? tag;
  //额外参数
  List? eventElse;

  MEvent(this.type, this.config, {this.name, this.tag, this.eventElse});

  factory MEvent.fromJson(Map<String, dynamic> srcJson) => _$MEventFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MEventToJson(this);
}
