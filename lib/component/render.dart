import 'package:flutter/material.dart';
import 'package:michelle_plugin/constant/m_constant.dart';
import 'package:michelle_plugin/model/m_base_widget_model.dart';
import 'package:michelle_plugin/model/m_image_model.dart';
import 'package:michelle_plugin/model/m_product_model.dart';
import 'package:michelle_plugin/model/m_text_model.dart';
import 'package:michelle_plugin/widget/m_image.dart';
import 'package:michelle_plugin/widget/m_product.dart';
import 'package:michelle_plugin/widget/m_text.dart';

class MRender {
  static Widget makeupWidget(MBaseWidgetModel mBaseWidgetModel) {
    var widget = parseComponent(mBaseWidgetModel);
    return widget;
  }

  static Widget parseComponent(MBaseWidgetModel mBaseWidgetModel) {
    switch (mBaseWidgetModel.mType) {
      case MType.text:
        return MText(mTextModel: mBaseWidgetModel as MTextModel);
      case MType.image:
        return MImage(mImageModel: mBaseWidgetModel as MImageModel);
      case MType.product:
        return MProduct(mProductModel: mBaseWidgetModel as MProductModel);
      default:
        //todo customWidget
        return ErrorWidget([Exception('Please check the mType or register your custom widget')]);
    }
  }
}
