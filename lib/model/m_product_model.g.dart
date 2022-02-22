// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MProductModel _$MProductModelFromJson(Map<String, dynamic> json) =>
    MProductModel(
      json['styleType'] as String,
      json['spaceBetween'] as num,
      json['backgroundColor'] as String,
      (json['productList'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      MItemBorderRadius.fromJson(
          json['mItemBorderRadius'] as Map<String, dynamic>),
      MItemPadding.fromJson(json['mItemPadding'] as Map<String, dynamic>),
      MItemMargin.fromJson(json['mItemMargin'] as Map<String, dynamic>),
      json['isNameShow'] as bool,
      json['priceAlign'] as String,
      mCardModel: json['mCardModel'] == null
          ? null
          : MCardModel.fromJson(json['mCardModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MProductModelToJson(MProductModel instance) =>
    <String, dynamic>{
      'styleType': instance.styleType,
      'spaceBetween': instance.spaceBetween,
      'backgroundColor': instance.backgroundColor,
      'productList': instance.productList,
      'mItemBorderRadius': instance.mItemBorderRadius,
      'mItemPadding': instance.mItemPadding,
      'mItemMargin': instance.mItemMargin,
      'isNameShow': instance.isNameShow,
      'priceAlign': instance.priceAlign,
      'mCardModel': instance.mCardModel,
    };

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      json['id'] as String,
      skuId: json['skuId'] as String?,
      type: json['type'] as String?,
      name: json['name'] as String?,
      content: json['content'] as String?,
      coupon: json['coupon'] as String?,
      currency: json['currency'] as String?,
      discount: json['discount'] as String?,
      imgUrl: json['imgUrl'] as String?,
      isOnSale: json['isOnSale'] as bool?,
      mEventList: (json['mEventList'] as List<dynamic>?)
          ?.map((e) => MEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      originalPrice: json['originalPrice'] as String?,
      platform: json['platform'] as String?,
      tag: json['tag'] as String?,
      price: json['price'] as String?,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'skuId': instance.skuId,
      'type': instance.type,
      'isOnSale': instance.isOnSale,
      'imgUrl': instance.imgUrl,
      'platform': instance.platform,
      'tag': instance.tag,
      'name': instance.name,
      'content': instance.content,
      'price': instance.price,
      'originalPrice': instance.originalPrice,
      'discount': instance.discount,
      'coupon': instance.coupon,
      'currency': instance.currency,
      'mEventList': instance.mEventList,
    };
