import 'package:json_annotation/json_annotation.dart';
import 'package:michelle_plugin/constant/m_constant.dart';
import 'package:michelle_plugin/model/m_base_widget_model.dart';
import 'package:michelle_plugin/model/m_style_model.dart';

import 'm_event_type.dart';

part 'm_image_model.g.dart';

@JsonSerializable()
class MImageModel extends MBaseWidgetModel {
  final String styleType;
  final num spaceBetween;
  final String backgroundColor;
  final List<ImageModel> picList;
  final MItemBorderRadius mItemBorderRadius;
  final MItemPadding mItemPadding;
  final MItemMargin mItemMargin;
  final List<String> showWithIdentity;

  MImageModel(
    this.styleType,
    this.spaceBetween,
    this.backgroundColor,
    this.picList,
    this.mItemBorderRadius,
    this.mItemPadding,
    this.mItemMargin,
    this.showWithIdentity,
  ) : super(mType: MType.image);

  factory MImageModel.fromJson(Map<String, dynamic> srcJson) => _$MImageModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MImageModelToJson(this);
}

@JsonSerializable()
class ImageModel {
  final String url;
  final num? imgWidth;
  final num? imgHeight;
  final MEvent? event;

  ImageModel(this.url, this.imgWidth, this.imgHeight, {this.event});

  factory ImageModel.fromJson(Map<String, dynamic> srcJson) => _$ImageModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}
