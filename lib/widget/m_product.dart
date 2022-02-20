import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:michelle_plugin/common/widget/m_cached_image.dart';
import 'package:michelle_plugin/common/widget/m_widget_style.dart';
import 'package:michelle_plugin/constant/m_constant.dart';
import 'package:michelle_plugin/model/m_product_model.dart';
import 'package:michelle_plugin/model/m_style_model.dart';
import 'package:michelle_plugin/utils/size_util.dart';
import 'package:michelle_plugin/widget/m_base_widget.dart';

class MProduct extends MBaseWidget {
  final MProductModel mProductModel;

  const MProduct({Key? key, required this.mProductModel}) : super(key: key, mType: MType.product);

  @override
  _MProductState createState() => _MProductState();
}

class _MProductState extends State<MProduct> {
  List<ProductModel> get productList => widget.mProductModel.productList;
  MItemBorderRadius get mItemBorderRadius => widget.mProductModel.mItemBorderRadius;
  MItemMargin get margin => widget.mProductModel.mItemMargin;
  MItemPadding get padding => widget.mProductModel.mItemPadding;
  num get _marginSum =>
      widget.mProductModel.mItemMargin.left + widget.mProductModel.mItemMargin.right;
  num get _paddingSum =>
      widget.mProductModel.mItemPadding.left + widget.mProductModel.mItemPadding.right;
  num get spaceBetween => widget.mProductModel.spaceBetween;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: _buildProductList(), //todo 可增加其他的类型商品
    );
  }

  //生成商品瀑布流
  Widget _buildProductList() {
    return Container(
      margin: EdgeInsets.fromLTRB(
        margin.left.toDouble(),
        margin.top.toDouble(),
        margin.right.toDouble(),
        margin.bottom.toDouble(),
      ),
      child: MasonryGridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisSpacing: spaceBetween.toDouble().a,
        mainAxisSpacing: spaceBetween.toDouble().a,
        itemBuilder: (BuildContext context, int index) {
          return _buildItem(productList[index]);
        },
        itemCount: productList.length,
      ),
    );
  }

  Widget _buildItem(ProductModel productModel) {
    var imgWidth = (MediaQuery.of(context).size.width -
            widget.mProductModel.spaceBetween -
            _marginSum -
            _paddingSum) /
        2;
    return ClipRRect(
      //todo use CardBorderRadius
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(mItemBorderRadius.topLeft.toDouble()),
        topRight: Radius.circular(mItemBorderRadius.topRight.toDouble()),
        bottomLeft: Radius.circular(mItemBorderRadius.bottomLeft.toDouble()),
        bottomRight: Radius.circular(mItemBorderRadius.bottomRight.toDouble()),
      ),
      child: Container(
        color: Colors.white,
        width: imgWidth.toDouble(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            //顶部商品图片
            _buildTopImage(productModel),
            //底部商品信息
            _buildProductInfo(productModel),
          ],
        ),
      ),
    );
  }

  Widget _buildProductInfo(ProductModel productModel) {
    bool isOneImage = productModel.currency == null &&
        productModel.price == null &&
        productModel.discount == null &&
        productModel.originalPrice == null &&
        productModel.content == null &&
        productModel.coupon == null &&
        productModel.platform == null;
    if (isOneImage) {
      return Container();
    }
    return Padding(
      padding: EdgeInsets.fromLTRB(
        padding.left.toDouble(),
        padding.top.toDouble(),
        padding.right.toDouble(),
        padding.bottom.toDouble(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              MWidgetStyle(
                text: productModel.price,
                type: MWidgetStyleType.price,
                currency: productModel.currency,
              ),
              MWidgetStyle(
                text: productModel.discount,
                type: MWidgetStyleType.discount,
              ),
              //if (productModel.originalPrice != null)
              MWidgetStyle(
                text: productModel.originalPrice,
                type: MWidgetStyleType.originalPrice,
                currency: productModel.currency,
              ),
            ],
          ),
          MWidgetStyle(text: productModel.content, type: MWidgetStyleType.content),
          MWidgetStyle(text: productModel.coupon, type: MWidgetStyleType.coupon),
          if (productModel.platform != null)
            Divider(color: Colors.black12, thickness: 0.5, height: 6.a),
          MWidgetStyle(text: productModel.platform, type: MWidgetStyleType.platform),
        ],
      ),
    );
  }

  Widget _buildTopImage(ProductModel productModel) {
    return Stack(
      children: [
        MCachedImage(
          url: productModel.imgUrl ?? '',
          isShowError: false,
          mItemBorderRadius: mItemBorderRadius,
        ),
        if (productModel.tag != null)
          Positioned(
            top: 0,
            right: 24,
            child: MWidgetStyle(text: productModel.tag, type: MWidgetStyleType.tag),
          ),
        Positioned(
          top: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {
              debugPrint('ttm  you click button to get more-${productModel.name}');
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.01),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(4.a)),
              ),
              child: Icon(
                Icons.more_horiz,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
