import 'package:flutter/material.dart';
import 'package:michelle_plugin/constant/m_constant.dart';
import 'package:michelle_plugin/utils/size_util.dart';

class MWidgetStyle extends StatelessWidget {
  final String? text;
  final String type;
  const MWidgetStyle({Key? key, required this.text, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (text == null) {
      return Container();
    }
    return Container(margin: EdgeInsets.symmetric(vertical: 2.a), child: _buildContent());
  }

  Widget _buildContent() {
    switch (type) {
      case MWidgetStyleType.discount:
        return _buildWidgetStyle("$text 折", textColor: Colors.white, bgColor: Colors.red);
      case MWidgetStyleType.coupon:
        return _buildWidgetStyle(
          "$text",
          textColor: Colors.red,
          fontSize: 12.a,
          borderColor: Colors.red,
        );
      case MWidgetStyleType.content:
        return Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.a),
            color: Colors.lightBlueAccent.withOpacity(0.12),
          ),
          padding: EdgeInsets.symmetric(vertical: 1.a, horizontal: 4.a),
          child: Text(
            "$text",
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 12.a,
              fontWeight: FontWeight.w400,
              height: 1.5,
            ),
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
          ),
        );
      case MWidgetStyleType.tag:
        return Container(
          height: 40.a,
          width: 40.a,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(2.a),
              bottomRight: Radius.circular(4.a),
            ),
            gradient: const LinearGradient(
              colors: [Colors.orange, Colors.deepOrange, Colors.red],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Text("$text"),
        );
      default:
        return Text("$text", style: const TextStyle(color: Colors.black));
    }
  }

  Widget _buildWidgetStyle(
    String text, {
    Color? textColor,
    double? fontSize,
    FontWeight? fontWeight,
    Color? bgColor,
    Color? borderColor,
    double? borderWidth,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.a),
        color: bgColor ?? Colors.transparent, //todo
        border: borderColor == null
            ? null
            : Border.all(
                color: borderColor,
                width: borderWidth ?? 0.5,
              ),
      ),
      padding: EdgeInsets.all(borderColor != null || bgColor != null ? 2.a : 0.a),
      margin:
          type == MWidgetStyleType.coupon ? EdgeInsets.zero : EdgeInsets.symmetric(horizontal: 4.a),
      child: Text(
        text,
        style: TextStyle(
          color: textColor ?? Colors.white,
          fontSize: fontSize ?? 8.a,
          fontWeight: fontWeight ?? FontWeight.w400,
        ),
      ),
    );
  }
}
