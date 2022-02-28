import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:michelle_plugin/component/m_data_manager.dart';
import 'package:michelle_plugin/component/m_event_manager.dart';
import 'package:michelle_plugin/component/m_widget_manager.dart';

export 'component/m_data_manager.dart';
export 'component/m_event_manager.dart';
export 'component/m_view.dart';
export 'component/m_widget_manager.dart';
export 'model/m_base_widget_model.dart';
export 'model/m_event_type.dart';
export 'model/m_product_model.dart';
export 'widget/m_base_widget.dart';

class MichellePlugin {
  static const MethodChannel _channel = MethodChannel('michelle_plugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static void registerWEventHandler(EventHandler handler) {
    MEventManager().register(handler);
  }

  static void registerDataHandler({ProductHandler? productHandler, CustomHandler? customHandler}) {
    MDataManager().register(pHandler: productHandler, cHandler: customHandler);
  }

  static void registerCustomWidget(String mType, MWidgetBuilder widgetBuilder) {
    MWidgetManager().register(mType, widgetBuilder);
  }

  static Future<bool> init() async {
    return true;
  }

  static Widget loadingWidget = Container();

  static void setLoadingWidget(Widget widget) => loadingWidget;

  Widget get getLoadingWidget => loadingWidget;
}
