import 'package:flutter/material.dart';
import 'package:michelle_plugin/common/widget/m_cached_image.dart';
import 'package:michelle_plugin/constant/m_constant.dart';
import 'package:michelle_plugin/model/m_kingkong_area_model.dart';
import 'package:michelle_plugin/model/m_style_model.dart';
import 'package:michelle_plugin/utils/color_util.dart';
import 'package:michelle_plugin/utils/size_util.dart';
import 'package:michelle_plugin/widget/m_base_widget.dart';
import 'package:michelle_plugin/widget/m_card.dart';

class MKingKongArea extends MBaseWidget {
  final MKingKongAreaModel mKingKongAreaModel;
  const MKingKongArea({Key? key, required this.mKingKongAreaModel})
      : super(key: key, mType: MType.kingKongArea);

  @override
  _MKingKongAreaState createState() => _MKingKongAreaState();
}

class _MKingKongAreaState extends State<MKingKongArea> {
  bool get shrinkWrap => widget.mKingKongAreaModel.shrinkWrap;
  List<IconGroupModel> get iconGroupList =>
      widget.mKingKongAreaModel.iconPageList.first.iconGroupList;
  num get _spaceBetween => widget.mKingKongAreaModel.spaceBetween ?? 0;
  num get _marginSum =>
      widget.mKingKongAreaModel.mItemMargin.left + widget.mKingKongAreaModel.mItemMargin.right;
  num get _paddingSum =>
      widget.mKingKongAreaModel.mItemPadding.left + widget.mKingKongAreaModel.mItemPadding.right;
  num get crossCount => iconGroupList.length > 5 ? 5 : iconGroupList.length;
  MItemMargin get margin => widget.mKingKongAreaModel.mItemMargin;
  MItemPadding get padding => widget.mKingKongAreaModel.mItemPadding;
  MItemBorderRadius get mItemBorderRadius =>
      widget.mKingKongAreaModel.mItemBorderRadius ?? MItemBorderRadius(0, 0, 0, 0);

  @override
  Widget build(BuildContext context) {
    return MCard(
      mCardModel: widget.mKingKongAreaModel.mCardModel,
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: crossCount.toInt(),
        children: getIconGroupList(),
      ),
    );
  }

  List<Widget> getIconGroupList() {
    var imgWidth = (MediaQuery.of(context).size.width - _marginSum) / crossCount * 0.6;
    List<Widget> list = [];
    iconGroupList.forEach((e) => list.add(_buildIconGroupItem(e, imgWidth)));
    return list;
  }

  Widget _buildIconGroupItem(IconGroupModel e, double imgWidth) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            child: MCachedImage(
                url: e.url,
                imgWidth: imgWidth > 60 ? 60 : imgWidth,
                imgHeight: imgWidth > 60 ? 60 : imgWidth,
                isShowError: false)),
        SizedBox(height: _spaceBetween.toDouble()),
        Text(
          e.title,
          style: TextStyle(
            color: ColorUtil.parseRGBO(widget.mKingKongAreaModel.titleColor),
            fontSize: 12.a,
          ),
        ),
      ],
    );
  }
}
