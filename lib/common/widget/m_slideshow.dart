import 'dart:async';

import 'package:flutter/material.dart';
import 'package:michelle_plugin/component/m_event_manager.dart';
import 'package:michelle_plugin/model/m_banner_model.dart';
import 'package:michelle_plugin/model/m_image_model.dart';
import 'package:michelle_plugin/utils/color_util.dart';
import 'package:michelle_plugin/utils/size_util.dart';

import 'm_cached_image.dart';

class MSlideShow extends StatefulWidget {
  final MBannerModel mBannerModel;
  const MSlideShow({Key? key, required this.mBannerModel}) : super(key: key);

  @override
  _MSlideShowState createState() => _MSlideShowState();
}

class _MSlideShowState extends State<MSlideShow> {
  List<ImageModel> get imageList => widget.mBannerModel.imageList;
  num get indicatorRadius => widget.mBannerModel.indicatorModel?.indicatorRadius ?? 0;

  final PageController pageController = PageController(initialPage: 0, viewportFraction: 1.0);
  int currentIndex = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    setTimer();
  }

  //setInterval控制当前动画元素的下标，实现动画轮播
  void setTimer() {
    timer = Timer.periodic(const Duration(seconds: 2), (t) {
      if (mounted) {
        setState(() {
          currentIndex = (++currentIndex) % imageList.length;
        });
      }
      if (currentIndex == 0) {
        pageController.jumpToPage(currentIndex);
      } else {
        pageController.animateToPage(
          currentIndex,
          duration: const Duration(milliseconds: 1000),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.a,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () => MEventManager().eventHandler.onEvent(imageList[index].event),
                  onHorizontalDragStart: (DragStartDetails dragStartDetails) {
                    timer.cancel();
                  },
                  onHorizontalDragEnd: (DragEndDetails dragEndDetails) {
                    //todo 手势控制待修复
                    debugPrint('ttm here end  ${dragEndDetails.velocity.pixelsPerSecond.dx > 0}');
                    if (dragEndDetails.velocity.pixelsPerSecond.dx > 0) {
                      if (currentIndex > 0) {
                        currentIndex--;
                      }
                    } else {
                      if (currentIndex < imageList.length - 1) {
                        currentIndex++;
                      }
                    }
                    pageController.animateToPage(
                      currentIndex,
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeOutBack,
                    );
                    setState(() {});
                    Future.delayed(const Duration(seconds: 2), setTimer);
                  },
                  child: MCachedImage(url: imageList[index].url, isShowError: false));
            },
            pageSnapping: true,
            itemCount: imageList.length,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: getIndicator(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getIndicator() {
    List<Widget> dots = [];
    for (int i = 0; i < imageList.length; i++) {
      dots.add(_buildIndicatorDot(i));
    }
    return dots;
  }

  Widget _buildIndicatorDot(int index) {
    return AnimatedContainer(
      curve: Curves.easeIn,
      duration: const Duration(milliseconds: 1000),
      width: currentIndex == index ? 40 : 10,
      height: 10,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(indicatorRadius.toDouble())),
        color: ColorUtil.parseRGBO(widget.mBannerModel.indicatorModel?.indicatorColor)
            .withOpacity(currentIndex == index ? 1 : 0.5),
      ),
    );
  }
}
