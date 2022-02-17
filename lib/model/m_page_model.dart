import 'package:json_annotation/json_annotation.dart';
import 'package:michelle_plugin/model/m_base_widget_model.dart';

part 'm_page_model.g.dart';

@JsonSerializable()
class MPageModel {
  String id;
  PageInfoModel pageInfoModel;
  List layout;

  MPageModel(this.id, this.pageInfoModel, this.layout);

  factory MPageModel.fromJson(Map<String, dynamic> json) => _$MPageModelFromJson(json);

  Map<String, dynamic> toJson() => _$MPageModelToJson(this);
}

@JsonSerializable()
class PageInfoModel {
  String title;
  String description;
  String backgroundColor;

  PageInfoModel(this.title, this.description, this.backgroundColor);

  factory PageInfoModel.fromJson(Map<String, dynamic> json) => _$PageInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$PageInfoModelToJson(this);
}
