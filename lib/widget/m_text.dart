import 'package:flutter/material.dart';
import 'package:michelle_plugin/common/widget/m_error_widget.dart';
import 'package:michelle_plugin/constant/m_constant.dart';
import 'package:michelle_plugin/model/m_style_model.dart';
import 'package:michelle_plugin/model/m_text_model.dart';
import 'package:michelle_plugin/utils/text_util.dart';
import 'package:michelle_plugin/widget/m_base_widget.dart';

class MText extends MBaseWidget {
  final MTextModel mTextModel;
  const MText({Key? key, required this.mTextModel}) : super(key: key, mType: MType.text);

  @override
  _MTextState createState() => _MTextState();
}

class _MTextState extends State<MText> {
  MItemMargin get margin => widget.mTextModel.mItemMargin ?? MItemMargin(0, 0, 0, 0);
  MItemPadding get padding => widget.mTextModel.mItemPadding ?? MItemPadding(0, 0, 0, 0);

  @override
  Widget build(BuildContext context) {
    //todo
    debugPrint('ttm -> m_text 参数: ${widget.mTextModel.toJson()}');
    debugPrint('ttm -> m_text 参数: ${widget.mTextModel.style!.toJson()}');
    if (TextUtil.isEmpty(widget.mTextModel.data)) {
      return MErrorWidget(
        type: MType.text,
        text: 'MText is null or empty',
        textStyle: widget.mTextModel.style == null
            ? null
            : widget.mTextModel.style!.convertToTextStyle(context),
      );
    }
    return Container(
      alignment: getAlignmentGeometry(widget.mTextModel.textAlign),
      margin: EdgeInsets.fromLTRB(
        margin.left.toDouble(),
        margin.top.toDouble(),
        margin.right.toDouble(),
        margin.bottom.toDouble(),
      ),
      padding: EdgeInsets.fromLTRB(
        padding.left.toDouble(),
        padding.top.toDouble(),
        padding.right.toDouble(),
        padding.bottom.toDouble(),
      ),
      child: Text(
        widget.mTextModel.data,
        style: widget.mTextModel.style == null
            ? null
            : widget.mTextModel.style!.convertToTextStyle(context),
        textAlign: TextAlign.center,
        softWrap: widget.mTextModel.softWrap,
        overflow: getTextOverflow(widget.mTextModel.overflow ?? ''),
        textScaleFactor: widget.mTextModel.textScaleFactor,
        maxLines: widget.mTextModel.maxLines,
        semanticsLabel: widget.mTextModel.semanticsLabel,
      ),
    );
  }
}
