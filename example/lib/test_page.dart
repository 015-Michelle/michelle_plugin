import 'package:flutter/material.dart';
import 'package:michelle_plugin/component/m_view.dart';
import 'package:michelle_plugin_example/test_config.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('it is show time'),
      ),
      body: MView(
        config: MConfig.getTextPage(),
        isFullPage: false,
      ),
    );
  }
}
