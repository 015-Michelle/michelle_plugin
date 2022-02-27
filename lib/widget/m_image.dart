import 'package:flutter/material.dart';
import 'package:michelle_plugin/common/widget/m_cached_image.dart';
import 'package:michelle_plugin/component/m_event_manager.dart';
import 'package:michelle_plugin/constant/m_constant.dart';
import 'package:michelle_plugin/model/m_image_model.dart';
import 'package:michelle_plugin/model/m_style_model.dart';
import 'package:michelle_plugin/utils/size_util.dart';
import 'package:michelle_plugin/widget/m_base_widget.dart';
import 'package:michelle_plugin/widget/m_card.dart';

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
  num get _paddingSum =>
      widget.mImageModel.mItemPadding.left + widget.mImageModel.mItemPadding.right;
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
    debugPrint('ttm-> m_image 参数： ${widget.mImageModel.toJson()}');
    return MCard(
      //color: ColorUtil.parseRGBA(backgroundColor),
      mCardModel: widget.mImageModel.mCardModel,
      child: Container(
        margin: EdgeInsets.fromLTRB(
          margin.left.toDouble(),
          margin.top.toDouble(),
          margin.right.toDouble(),
          margin.bottom.toDouble(),
        ),
        child: _buildImageLayout(context),
      ),
    );
  }

  Widget _buildImageLayout(BuildContext context) {
    switch (_styleType) {
      case MImageType.one:
        return _buildNormalImage();
      case MImageType.two:
        return _buildNormalImage(length: 2);
      case MImageType.three:
        return _buildNormalImage(length: 3);
      case MImageType.twoRTwoC:
        return _buildNormalImage(length: 4);
      case MImageType.one_two:
        return _buildOneTwoImage();
      case MImageType.scroll:
        return _buildScrollImage();
      default:
        return Container();
    }
  }

  Widget _buildScrollImage() {
    return SizedBox(
      height: 70.a,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return _buildImageItem(
            _picList[index],
            length: _picList.length < 3 ? _picList.length.toDouble() : 2.5,
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: _spaceBetween.toDouble().a);
        },
        itemCount: _picList.length,
      ),
    );
  }

  Widget _buildOneTwoImage() {
    var outMarginLeft = widget.mImageModel.mCardModel?.mItemMargin?.left ?? 0;
    var outMarginRight = widget.mImageModel.mCardModel?.mItemMargin?.right ?? 0;
    var imgWidth =
        (MediaQuery.of(context).size.width - _marginSum - outMarginLeft - outMarginRight) / 2 -
            _spaceBetween -
            1;
    //图片数量少于3，自动转为相应展示
    if (_picList.length < 3) {
      return _buildNormalImage(length: _picList.length);
    }
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0x00ffffff), width: 0.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints.expand(
                width: imgWidth * 1.2, height: imgWidth * 0.8 + _spaceBetween),
            child: _buildImageItem(_picList[0]),
          ),
          SizedBox(width: _spaceBetween.toDouble().a),
          ConstrainedBox(
            constraints: BoxConstraints.expand(
                width: imgWidth * 0.8, height: imgWidth * 0.8 + _spaceBetween),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildImageItem(_picList[1], imgHeight: imgWidth * 0.4),
                SizedBox(height: _spaceBetween.toDouble().a),
                _buildImageItem(_picList[2], imgHeight: imgWidth * 0.4),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNormalImage({int length = 1}) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(mItemBorderRadius.topLeft.toDouble()),
        topRight: Radius.circular(mItemBorderRadius.topRight.toDouble()),
        bottomLeft: Radius.circular(mItemBorderRadius.bottomLeft.toDouble()),
        bottomRight: Radius.circular(mItemBorderRadius.bottomRight.toDouble()),
      ),
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: length == 4 ? 2 : length,
        childAspectRatio: length == 4 || length == 1 ? 2 : 1.5,
        mainAxisSpacing: _spaceBetween.toDouble().a,
        crossAxisSpacing: _spaceBetween.toDouble().a,
        children: _getPicListByType(length),
      ),
    );
  }

  List<Widget> _getPicListByType(int length, {int start = 0}) {
    List<Widget> imgList =
        _picList.map((e) => _buildImageItem(e, length: length.toDouble())).toList();
    return imgList.sublist(start, length);
  }

  Widget _buildImageItem(ImageModel image, {double length = 1, double? imgHeight}) {
    var imgWidth =
        (MediaQuery.of(context).size.width - _marginSum - (length - 1) * _spaceBetween) / length;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => MEventManager().eventHandler.onEvent(image.event),
      child: MCachedImage(
        url: image.url,
        imgWidth: imgWidth.toDouble().a,
        imgHeight: imgHeight?.a,
        isShowError: false,
        mItemBorderRadius: length == 4 ? null : mItemBorderRadius,
      ),
    );
  }
}
