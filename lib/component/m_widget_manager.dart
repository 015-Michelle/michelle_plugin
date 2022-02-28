import 'package:michelle_plugin/model/m_base_widget_model.dart';
import 'package:michelle_plugin/widget/m_base_widget.dart';

typedef RenderFunc = MBaseWidget Function(MBaseWidgetModel model);

class MWidgetBuilder {
  RenderFunc onRender;

  MWidgetBuilder(this.onRender);
}

class MWidgetManager {
  static final MWidgetManager _manager = MWidgetManager._internal();

  factory MWidgetManager() {
    return _manager;
  }

  MWidgetManager._internal();

  Map<String, MWidgetBuilder> customWidgets = {};

  void register(String mType, MWidgetBuilder widgetBuilder) {
    customWidgets[mType] = widgetBuilder;
  }
}
