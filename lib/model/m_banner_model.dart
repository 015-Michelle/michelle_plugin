import 'package:json_annotation/json_annotation.dart';
import 'package:michelle_plugin/constant/m_constant.dart';
import 'package:michelle_plugin/model/m_base_widget_model.dart';
import 'package:michelle_plugin/model/m_card_model.dart';
import 'package:michelle_plugin/model/m_image_model.dart';
import 'package:michelle_plugin/model/m_style_model.dart';

import 'm_kingkong_area_model.dart';

part 'm_banner_model.g.dart';

@JsonSerializable()
class MBannerModel extends MBaseWidgetModel {
  List<ImageModel> imageList;
  String? backgroundImage;
  MItemBorderRadius mItemBorderRadius;
  MItemPadding mItemPadding;
  MItemMargin mItemMargin;
  IndicatorModel? indicatorModel;
  MCardModel? mCardModel;

  MBannerModel(
    this.imageList,
    this.mItemBorderRadius,
    this.mItemPadding,
    this.mItemMargin, {
    this.backgroundImage,
    this.indicatorModel,
    this.mCardModel,
  }) : super(mType: MType.banner);

  factory MBannerModel.fromJson(Map<String, dynamic> srcJson) => _$MBannerModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MBannerModelToJson(this);
}
