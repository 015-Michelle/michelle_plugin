import 'package:flutter/material.dart';
import 'package:michelle_plugin/common/widget/m_cached_image.dart';
import 'package:michelle_plugin/constant/m_constant.dart';
import 'package:michelle_plugin/model/m_image_model.dart';
import 'package:michelle_plugin/model/m_style_model.dart';
import 'package:michelle_plugin/utils/color_util.dart';
import 'package:michelle_plugin/widget/m_base_widget.dart';

class MImage extends MBaseWidget {
  final MImageModel mImageModel;
  const MImage({Key? key, required this.mImageModel}) : super(key: key, mType: MType.image);

  @override
  _MImageState createState() => _MImageState();
}

class _MImageState extends State<MImage> {
  late MItemPadding padding;
  late MItemMargin margin;
  late MItemBorderRadius mItemBorderRadius;
  late String backgroundColor;

  String get _styleType => widget.mImageModel.styleType;
  List<ImageModel> get _picList => widget.mImageModel.picList;
  num get _marginSum => widget.mImageModel.mItemMargin.left + widget.mImageModel.mItemMargin.right;
  num get _spaceBetween => widget.mImageModel.spaceBetween;

  @override
  void initState() {
    super.initState();
    padding = widget.mImageModel.mItemPadding;
    margin = widget.mImageModel.mItemMargin;
    mItemBorderRadius = widget.mImageModel.mItemBorderRadius;
    backgroundColor = widget.mImageModel.backgroundColor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //todo 待调整
      padding: EdgeInsets.fromLTRB(
        padding.left.toDouble(),
        padding.top.toDouble(),
        padding.right.toDouble(),
        padding.bottom.toDouble(),
      ),
      margin: EdgeInsets.fromLTRB(
        margin.left.toDouble(),
        margin.top.toDouble(),
        margin.right.toDouble(),
        margin.bottom.toDouble(),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0x00ffffff), width: 0.0),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(mItemBorderRadius.topLeft.toDouble()),
          topRight: Radius.circular(mItemBorderRadius.topRight.toDouble()),
          bottomLeft: Radius.circular(mItemBorderRadius.bottomLeft.toDouble()),
          bottomRight: Radius.circular(mItemBorderRadius.bottomRight.toDouble()),
        ),
        color: ColorUtil.parseRGBA(backgroundColor),
      ),
      child: _buildImageLayout(context),
    );
  }

  Widget _buildImageLayout(BuildContext context) {
    switch (_styleType) {
      case MImageType.one:
        return _buildImageItems();
      case MImageType.two:
        return _buildImageItems(length: 2);
      default:
        return Container();
    }
  }

  Widget _buildImageItems({int length = 1}) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: const Color(0x00ffffff), width: 0.0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: length == 1 ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
        children: _picList.map((e) => _buildImageItem(e, length: length)).toList(),
      ),
    );
  }

  Widget _buildImageItem(ImageModel image, {int length = 1}) {
    var imgWidth =
        (MediaQuery.of(context).size.width - _marginSum - (length - 1) * _spaceBetween) / length;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (image.event != null) {
          //todo event
        }
      },
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(mItemBorderRadius.topLeft.toDouble()),
          topRight: Radius.circular(mItemBorderRadius.topRight.toDouble()),
          bottomLeft: Radius.circular(mItemBorderRadius.bottomLeft.toDouble()),
          bottomRight: Radius.circular(mItemBorderRadius.bottomRight.toDouble()),
        ),
        child: MCachedImage(
          url: image.url,
          imgWidth: imgWidth.toDouble(),
          imgHeight: imgWidth.toDouble(), //todo 比例待调整
          isShowError: false,
        ),
      ),
    );
  }
}
