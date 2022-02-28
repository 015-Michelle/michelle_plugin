import 'package:flutter/material.dart';
import 'package:michelle_plugin/constant/m_constant.dart';
import 'package:michelle_plugin/utils/size_util.dart';

class MWidgetStyle extends StatelessWidget {
  final String? text;
  final String type;
  final String? currency;
  const MWidgetStyle({Key? key, required this.text, required this.type, this.currency})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (text == null) {
      return Container();
    }
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: type == MWidgetStyleType.tag
            ? 0
            : type == MWidgetStyleType.platform
                ? 4.a
                : 2.a,
      ),
      child: _buildContent(),
    );
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
              color: Colors.deepPurple,
              fontSize: 12.a,
              fontWeight: FontWeight.w400,
              height: 1.5,
            ),
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
          ),
        );
      case MWidgetStyleType.tag:
        return _buildTagItem();
      case MWidgetStyleType.platform:
        return Row(
          children: [
            Icon(Icons.ac_unit, color: Colors.black12, size: 16.a),
            SizedBox(width: 2.a),
            Text(
              '$text',
              style: TextStyle(color: Colors.black, fontSize: 14.a, fontWeight: FontWeight.w300),
            ),
            Icon(Icons.chevron_right, color: Colors.blueGrey, size: 16.a),
          ],
        );
      case MWidgetStyleType.price:
        return _buildPriceStyle();
      case MWidgetStyleType.originalPrice:
        return _buildPriceStyle(isOriginalPrice: true);
      default:
        return Text("$text", style: const TextStyle(color: Colors.black));
    }
  }

  Widget _buildPriceStyle({bool isOriginalPrice = false}) {
    return RichText(
      text: TextSpan(
        text: currency ?? '￥',
        style: TextStyle(
          color: isOriginalPrice ? Colors.black26 : Colors.red,
          fontSize: 12.a,
          fontWeight: isOriginalPrice ? FontWeight.w400 : FontWeight.w700,
          decoration: isOriginalPrice ? TextDecoration.lineThrough : null,
        ),
        children: [
          TextSpan(
            text: text ?? '',
            style: isOriginalPrice
                ? null
                : TextStyle(
                    color: Colors.red,
                    fontSize: 16.a,
                    fontWeight: FontWeight.w700,
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildTagItem() {
    return Container(
      height: 30.a,
      width: 30.a,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(22.a),
          bottomRight: Radius.circular(22.a),
        ),
        gradient: const LinearGradient(
          colors: [Colors.orange, Colors.deepOrange, Colors.red],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 2.a, vertical: 1.a),
      alignment: Alignment.center,
      child: Text(
        "$text",
        style: TextStyle(color: Colors.white, fontSize: 12.a, fontWeight: FontWeight.w300),
        textAlign: TextAlign.center,
      ),
    );
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
