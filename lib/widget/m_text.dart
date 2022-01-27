import 'package:flutter/material.dart';
import 'package:michelle_plugin/common/widget/m_error_widget.dart';
import 'package:michelle_plugin/constant/m_constant.dart';
import 'package:michelle_plugin/model/m_text_model.dart';
import 'package:michelle_plugin/utils/text_util.dart';

class MText extends StatefulWidget {
  final MTextModel mTextModel;
  const MText({Key? key, required this.mTextModel}) : super(key: key);

  @override
  _MTextState createState() => _MTextState();
}

class _MTextState extends State<MText> {
  @override
  Widget build(BuildContext context) {
    if (TextUtil.isEmpty(widget.mTextModel.data)) {
      return MErrorWidget(
        type: MType.text,
        text: 'MText is null or empty',
        textStyle: widget.mTextModel.style,
      );
    }
    return Text(
      widget.mTextModel.data,
      key: widget.mTextModel.key,
      style: widget.mTextModel.style,
      strutStyle: widget.mTextModel.strutStyle,
      textAlign: widget.mTextModel.textAlign,
      textDirection: widget.mTextModel.textDirection,
      locale: widget.mTextModel.locale,
      softWrap: widget.mTextModel.softWrap,
      overflow: widget.mTextModel.overflow,
      textScaleFactor: widget.mTextModel.textScaleFactor,
      maxLines: widget.mTextModel.maxLines,
      semanticsLabel: widget.mTextModel.semanticsLabel,
      textWidthBasis: widget.mTextModel.textWidthBasis,
      textHeightBehavior: widget.mTextModel.textHeightBehavior,
    );
  }
}
