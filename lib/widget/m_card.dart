import 'package:flutter/material.dart';
import 'package:michelle_plugin/model/m_card_model.dart';
import 'package:michelle_plugin/model/m_style_model.dart';
import 'package:michelle_plugin/utils/color_util.dart';
import 'package:michelle_plugin/utils/m_local_cache_network_image.dart';
import 'package:michelle_plugin/utils/text_util.dart';

class MCard extends StatefulWidget {
  final Widget child;
  final MCardModel? mCardModel;
  final AlignmentGeometry? alignment;
  const MCard({Key? key, required this.child, this.mCardModel, this.alignment}) : super(key: key);

  @override
  _MCardState createState() => _MCardState();
}

class _MCardState extends State<MCard> {
  Widget get child => widget.child;
  MCardModel? get mCardModel => widget.mCardModel;
  MItemMargin? get margin => widget.mCardModel?.mItemMargin;
  MItemPadding? get padding => widget.mCardModel?.mItemPadding;
  MItemBorderRadius? get borderRadius => widget.mCardModel?.mItemBorderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: margin?.left.toDouble() ?? 0,
        top: margin?.top.toDouble() ?? 0,
        right: margin?.right.toDouble() ?? 0,
        bottom: margin?.bottom.toDouble() ?? 0,
      ),
      padding: EdgeInsets.only(
        left: padding?.left.toDouble() ?? 0,
        top: padding?.top.toDouble() ?? 0,
        right: padding?.right.toDouble() ?? 0,
        bottom: padding?.bottom.toDouble() ?? 0,
      ),
      decoration: BoxDecoration(
        color: ColorUtil.parseRGBO(mCardModel?.backgroundColor),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadius?.topLeft.toDouble() ?? 0),
          topRight: Radius.circular(borderRadius?.topRight.toDouble() ?? 0),
          bottomLeft: Radius.circular(borderRadius?.bottomLeft.toDouble() ?? 0),
          bottomRight: Radius.circular(borderRadius?.bottomRight.toDouble() ?? 0),
        ),
        border: TextUtil.isEmpty(mCardModel?.backgroundColor)
            ? Border.all(color: ColorUtil.parseRGBO(mCardModel?.borderColor))
            : null,
        gradient: mCardModel?.gradientColors == null
            ? null
            : LinearGradient(
                colors: mCardModel!.gradientColors!.map((e) => ColorUtil.parseRGBO(e)).toList(),
              ),
        image: mCardModel?.backgroundImage == null
            ? null
            : DecorationImage(image: MLocalCacheNetworkImage(mCardModel!.backgroundImage!)),
      ),
      alignment: widget.alignment ?? Alignment.center,
      child: child,
    );
  }
}
