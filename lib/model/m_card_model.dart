import 'package:json_annotation/json_annotation.dart';

import 'm_style_model.dart';

part 'm_card_model.g.dart';

@JsonSerializable()
class MCardModel {
  final String? backgroundColor;
  final MItemBorderRadius? mItemBorderRadius;
  final MItemPadding? mItemPadding;
  final MItemMargin? mItemMargin;
  final String? borderColor;
  final List<String>? gradientColors;
  final String? backgroundImage;

  MCardModel({
    this.backgroundColor,
    this.mItemBorderRadius,
    this.mItemPadding,
    this.mItemMargin,
    this.borderColor,
    this.gradientColors,
    this.backgroundImage,
  });

  factory MCardModel.fromJson(Map<String, dynamic> srcJson) => _$MCardModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MCardModelToJson(this);
}
