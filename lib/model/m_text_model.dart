import 'package:flutter/cupertino.dart';
import 'package:michelle_plugin/constant/m_constant.dart';
import 'package:michelle_plugin/model/m_base_widget_model.dart';

class MTextModel extends MBaseWidgetModel {
  final String data;
  final Key? key;
  TextStyle? style;
  StrutStyle? strutStyle;
  TextAlign? textAlign;
  TextDirection? textDirection;
  Locale? locale;
  bool? softWrap;
  TextOverflow? overflow;
  double? textScaleFactor;
  int? maxLines;
  String? semanticsLabel;
  TextWidthBasis? textWidthBasis;
  TextHeightBehavior? textHeightBehavior;
  MTextModel(
    this.data, {
    this.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  }) : super(mType: MType.text);

  factory MTextModel.fromJson(Map<String, dynamic> json) {
    return MTextModel(json['data']);
  }
}
