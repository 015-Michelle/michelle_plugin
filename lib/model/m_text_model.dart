import 'package:json_annotation/json_annotation.dart';
import 'package:michelle_plugin/constant/m_constant.dart';
import 'package:michelle_plugin/model/m_base_widget_model.dart';
import 'package:michelle_plugin/model/m_card_model.dart';
import 'package:michelle_plugin/model/m_event_type.dart';
import 'package:michelle_plugin/model/m_style_model.dart';

part 'm_text_model.g.dart';

@JsonSerializable()
class MTextModel extends MBaseWidgetModel {
  final String data;
  MTextStyle? style;
  String? textAlign;
  bool? softWrap;
  String? overflow;
  double? textScaleFactor;
  int? maxLines;
  String? semanticsLabel;
  String? textWidthBasis;
  MCardModel? mCardModel;
  MTextDecoration? mTextDecoration;
  MEvent? event;

  MTextModel(
    this.data, {
    this.style,
    this.textAlign,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.mCardModel,
    this.mTextDecoration,
    this.event,
  }) : super(mType: MType.text);

  factory MTextModel.fromJson(Map<String, dynamic> json) => _$MTextModelFromJson(json);

  Map<String, dynamic> toJson() => _$MTextModelToJson(this);
}
