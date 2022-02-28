import 'package:michelle_plugin/model/m_base_widget_model.dart';
import 'package:michelle_plugin/model/m_product_model.dart';

typedef ProductAdapter = Future<List<ProductModel>> Function(List<ProductModel> products);
typedef CustomAdapter = MBaseWidgetModel Function(String mType, dynamic config);

class ProductHandler {
  ProductAdapter adapter;

  ProductHandler(this.adapter);
}

class CustomHandler {
  CustomAdapter adapter;

  CustomHandler(this.adapter);
}

class MDataManager {
  static final MDataManager _manager = MDataManager._internal();

  factory MDataManager() {
    return _manager;
  }

  MDataManager._internal();

  ProductHandler? mProductHandler;

  CustomHandler? customHandler;

  void register({ProductHandler? pHandler, CustomHandler? cHandler}) {
    mProductHandler = pHandler;
    customHandler = cHandler;
  }
}
