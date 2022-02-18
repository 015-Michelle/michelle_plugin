import 'package:flutter/material.dart';
import 'package:michelle_plugin/constant/m_constant.dart';
import 'package:michelle_plugin/model/m_product_model.dart';
import 'package:michelle_plugin/widget/m_base_widget.dart';

class MProduct extends MBaseWidget {
  final MProductModel mProductModel;

  const MProduct({Key? key, required this.mProductModel}) : super(key: key, mType: MType.product);

  @override
  _MProductState createState() => _MProductState();
}

class _MProductState extends State<MProduct> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
