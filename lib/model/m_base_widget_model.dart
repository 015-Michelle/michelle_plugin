import 'package:michelle_plugin/constant/m_constant.dart';
import 'package:michelle_plugin/model/m_text_model.dart';

class MBaseWidgetModel {
  final String mType;
  MBaseWidgetModel({required this.mType});

  factory MBaseWidgetModel.parse(Map<String, dynamic> json) {
    String type = json['type'];
    switch (type) {
      case MType.text:
        return MTextModel.fromJson(json['config']);
      default: //todo
        throw Exception();
    }
  }
}
