import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:michelle_plugin/constant/m_style.dart';

class MErrorWidget extends StatelessWidget {
  final String type;
  final String text;
  final TextStyle? textStyle;
  const MErrorWidget(
      {Key? key, this.type = 'M-Plugin', this.text = 'Data format wrong!', this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //release模式下不展示
    if (kReleaseMode) {
      return Container();
    }
    return Center(
      child: Text(
        "$type:$text",
        style: textStyle ?? mErrorWidgetStyle,
      ),
    );
  }
}
