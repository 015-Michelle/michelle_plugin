import 'package:flutter/material.dart';
import 'package:michelle_plugin/model/m_event_type.dart';

typedef EventCallback = void Function(MEvent? event);

class EventHandler {
  EventCallback onEvent;

  EventHandler(this.onEvent);
}

class MEventManager {
  static final MEventManager _manager = MEventManager._internal();

  factory MEventManager() {
    return _manager;
  }

  MEventManager._internal();

  EventHandler eventHandler = EventHandler((event) {
    debugPrint('ttm=>Please register EventHandler');
  });

  void register(EventHandler handler) {
    eventHandler = handler;
  }
}
