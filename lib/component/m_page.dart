import 'package:flutter/material.dart';
import 'package:michelle_plugin/component/render.dart';
import 'package:michelle_plugin/model/m_base_widget_model.dart';
import 'package:michelle_plugin/model/m_page_model.dart';
import 'package:michelle_plugin/utils/color_util.dart';

class MPage extends StatefulWidget {
  final MPageModel pageModel;
  final bool isFullPage;

  const MPage({Key? key, required this.pageModel, required this.isFullPage}) : super(key: key);

  @override
  _MPageState createState() => _MPageState();
}

class _MPageState extends State<MPage> {
  MPageModel get pageModel => widget.pageModel;
  bool get isFullPage => widget.isFullPage;

  @override
  Widget build(BuildContext context) {
    return isFullPage
        ? Scaffold(
            backgroundColor: ColorUtil.parseRGBA(pageModel.pageInfoModel.backgroundColor),
            appBar: AppBar(
              title: Text(pageModel.pageInfoModel.title),
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  //color: ColorUtil.parseRGBA(pageModel.pageInfoModel.backgroundColor),
                  border: Border.all(color: const Color(0x00ffffff), width: 0.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: pageModel.layout
                      .map((e) => MRender.makeupWidget(MBaseWidgetModel.parse(e)))
                      .toList(),
                ),
              ),
            ),
          )
        : Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: ColorUtil.parseRGBA(pageModel.pageInfoModel.backgroundColor),
              border: Border.all(color: const Color(0x00ffffff), width: 0.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: pageModel.layout
                  .map((e) => MRender.makeupWidget(MBaseWidgetModel.parse(e)))
                  .toList(),
            ),
          );
  }
}
