import 'package:json_annotation/json_annotation.dart';

part 'm_event_type.g.dart';

enum MEventType {
  url,
  appPage,
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
  String arguments;
  //额外参数
  List? eventElse;

  MEvent(this.type, this.arguments, {this.eventElse});

  factory MEvent.fromJson(Map<String, dynamic> srcJson) => _$MEventFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MEventToJson(this);
}
