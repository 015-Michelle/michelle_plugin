import 'package:json_annotation/json_annotation.dart';
import 'package:michelle_plugin/constant/m_constant.dart';
import 'package:michelle_plugin/model/m_base_widget_model.dart';
import 'package:michelle_plugin/model/m_card_model.dart';
import 'package:michelle_plugin/model/m_event_type.dart';
import 'package:michelle_plugin/model/m_style_model.dart';

part 'm_kingkong_area_model.g.dart';

@JsonSerializable()
class MKingKongAreaModel extends MBaseWidgetModel {
  String titleColor;
  IndicatorModel? indicatorModel;
  List<IconPageModel> iconPageList;
  bool shrinkWrap;
  MItemBorderRadius? mItemBorderRadius;
  MItemMargin mItemMargin;
  MItemPadding mItemPadding;
  num? spaceBetween;
  MCardModel? mCardModel;

  MKingKongAreaModel(
    this.titleColor,
    this.iconPageList,
    this.shrinkWrap, {
    this.indicatorModel,
    required this.mItemMargin,
    required this.mItemPadding,
    this.mItemBorderRadius,
    this.spaceBetween,
    this.mCardModel,
  }) : super(mType: MType.kingKongArea);

  factory MKingKongAreaModel.fromJson(Map<String, dynamic> json) =>
      _$MKingKongAreaModelFromJson(json);

  Map<String, dynamic> toJson() => _$MKingKongAreaModelToJson(this);
}

@JsonSerializable()
class IconPageModel {
  String pageTitle;
  List<IconGroupModel> iconGroupList;

  IconPageModel(this.pageTitle, this.iconGroupList);

  factory IconPageModel.fromJson(Map<String, dynamic> json) => _$IconPageModelFromJson(json);

  Map<String, dynamic> toJson() => _$IconPageModelToJson(this);
}

@JsonSerializable()
class IconGroupModel {
  String type;
  String title;
  String? desc;
  String url;
  MEvent? event;

  IconGroupModel(this.type, this.title, this.url, {this.desc, this.event});

  factory IconGroupModel.fromJson(Map<String, dynamic> json) => _$IconGroupModelFromJson(json);

  Map<String, dynamic> toJson() => _$IconGroupModelToJson(this);
}

@JsonSerializable()
class IndicatorModel {
  String? indicatorColor;
  num? indicatorRadius;

  IndicatorModel({this.indicatorColor, this.indicatorRadius});

  factory IndicatorModel.fromJson(Map<String, dynamic> json) => _$IndicatorModelFromJson(json);

  Map<String, dynamic> toJson() => _$IndicatorModelToJson(this);
}
