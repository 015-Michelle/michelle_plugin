import 'package:json_annotation/json_annotation.dart';
import 'package:michelle_plugin/constant/m_constant.dart';
import 'package:michelle_plugin/model/m_base_widget_model.dart';
import 'package:michelle_plugin/model/m_card_model.dart';
import 'package:michelle_plugin/model/m_event_type.dart';
import 'package:michelle_plugin/model/m_style_model.dart';

part 'm_product_model.g.dart';

@JsonSerializable()
class MProductModel extends MBaseWidgetModel {
  final String styleType;
  final num spaceBetween;
  final String backgroundColor;
  final List<ProductModel> productList;
  final MItemBorderRadius mItemBorderRadius;
  final MItemPadding mItemPadding;
  final MItemMargin mItemMargin;
  final bool isNameShow;
  final String priceAlign;
  final MCardModel? mCardModel;

  MProductModel(
    this.styleType,
    this.spaceBetween,
    this.backgroundColor,
    this.productList,
    this.mItemBorderRadius,
    this.mItemPadding,
    this.mItemMargin,
    this.isNameShow,
    this.priceAlign, {
    this.mCardModel,
  }) : super(mType: MType.product);

  factory MProductModel.fromJson(Map<String, dynamic> srcJson) => _$MProductModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MProductModelToJson(this);
}

@JsonSerializable()
class ProductModel {
  String id;
  String? skuId;
  String? type;
  bool? isOnSale;

  String? imgUrl;
  String? platform;
  String? tag; //标签

  String? name;
  String? content;
  String? price;
  String? originalPrice;
  String? discount;
  String? coupon;
  String? currency;
  List<MEvent>? eventList;

  ProductModel(
    this.id, {
    this.skuId,
    this.type,
    this.name,
    this.content,
    this.coupon,
    this.currency,
    this.discount,
    this.imgUrl,
    this.isOnSale,
    this.eventList,
    this.originalPrice,
    this.platform,
    this.tag,
    this.price,
  });

  factory ProductModel.fromJson(Map<String, dynamic> srcJson) => _$ProductModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
