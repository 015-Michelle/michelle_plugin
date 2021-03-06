import 'package:michelle_plugin/constant/m_constant.dart';
import 'package:michelle_plugin/model/m_banner_model.dart';
import 'package:michelle_plugin/model/m_image_model.dart';
import 'package:michelle_plugin/model/m_kingkong_area_model.dart';
import 'package:michelle_plugin/model/m_product_model.dart';
import 'package:michelle_plugin/model/m_text_model.dart';

class MBaseWidgetModel {
  final String mType;
  MBaseWidgetModel({required this.mType});

  factory MBaseWidgetModel.parse(Map<String, dynamic> json) {
    String type = json['mType'];
    var config = json['config'];
    switch (type) {
      case MType.text:
        return MTextModel.fromJson(config);
      case MType.image:
        return MImageModel.fromJson(config);
      case MType.product:
        return MProductModel.fromJson(config);
      case MType.banner:
        return MBannerModel.fromJson(config);
      case MType.kingKongArea:
        return MKingKongAreaModel.fromJson(config);
      default: //todo
        throw Exception();
    }
  }
}
