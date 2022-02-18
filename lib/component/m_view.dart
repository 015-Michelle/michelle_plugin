import 'package:flutter/material.dart';
import 'package:michelle_plugin/model/m_page_model.dart';

import 'm_page.dart';

class MView extends StatefulWidget {
  final Map<String, dynamic> config;
  final bool? isFullPage;

  const MView({Key? key, required this.config, this.isFullPage = false}) : super(key: key);

  @override
  _MViewState createState() => _MViewState();
}

class _MViewState extends State<MView> {
  Map<String, dynamic> get config => widget.config;
  bool? get isFullPage => widget.isFullPage;

  late MPageModel pageModel;

  @override
  Widget build(BuildContext context) {
    pageModel = MPageModel.fromJson(config);

    return MPage(
      pageModel: pageModel,
      isFullPage: isFullPage ?? false,
    );
  }
}
