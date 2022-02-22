import 'package:flutter/material.dart';
import 'package:michelle_plugin/common/widget/m_slideshow.dart';
import 'package:michelle_plugin/model/m_banner_model.dart';
import 'package:michelle_plugin/utils/m_local_cache_network_image.dart';
import 'package:michelle_plugin/utils/text_util.dart';

class MBanner extends StatefulWidget {
  final MBannerModel mBannerModel;
  const MBanner({Key? key, required this.mBannerModel}) : super(key: key);

  @override
  _MBannerState createState() => _MBannerState();
}

class _MBannerState extends State<MBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0x00ffffff), width: 0.0),
        image: TextUtil.isEmpty(widget.mBannerModel.backgroundImage)
            ? null
            : DecorationImage(
                image: MLocalCacheNetworkImage(widget.mBannerModel.backgroundImage ?? ''),
              ),
      ),
      child: MSlideShow(mBannerModel: widget.mBannerModel),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
