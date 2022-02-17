import 'package:json_annotation/json_annotation.dart';

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

  factory MEvent.fromString(
    String type,
    String config, {
    String? name,
    String? tag,
    List? eventElse,
  }) {
    var mEventType = _convertStringToEventType(type);
    return MEvent(mEventType, config, tag: tag, name: name, eventElse: eventElse);
  }
}
