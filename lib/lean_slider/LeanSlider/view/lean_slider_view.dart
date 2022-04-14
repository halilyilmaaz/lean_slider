import 'package:flutter/material.dart';
import 'package:lean_slider/lean_slider/LeanSlider/controller/lean_slider_controller.dart';
import 'package:lean_slider/options/lean_slider_options.dart';
import 'package:get/get.dart';

class LeanSliderView extends StatelessWidget {
  const LeanSliderView(
      {Key? key,
      this.sliderOptions,
      this.height,
      this.width,
      required this.children})
      : super(key: key);
  final SliderOptions? sliderOptions;
  final double? height;
  final double? width;
  final List<dynamic> children;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LeanSliderController());
    return Scaffold(
      key: controller.scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * height!,
              width: MediaQuery.of(context).size.width * width!,
              child: PageView.builder(
                  controller: controller.pageController,
                  onPageChanged: (int _index) {
                    controller.imagePositionIndex = _index;
                  },
                  itemCount: children.length, //controller.images.length,
                  pageSnapping: true,
                  itemBuilder: (context, pagePosition) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: children[pagePosition],
                    );
                  }),
            ),
            Obx(
              () => indicators(context, 1,  controller.imagePositionIndex)
            )
          ],
        ),
      ),
    );
  }

  Widget indicators(BuildContext context, imagesLength, currentIndex) {
    return children.length != 1
        ? Container(
            height: sliderOptions!.barHeight,
            width: MediaQuery.of(context).size.width * width!,
            decoration: BoxDecoration(
                color: sliderOptions!.barColor,
                borderRadius: BorderRadius.circular(sliderOptions!.radius!)),
            child: Padding(
              padding: const EdgeInsets.only(left: 1),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    AnimatedSlide(
                        child: Container(
                          height: sliderOptions!.barHeight! - (2.75),
                          width: (MediaQuery.of(context).size.width * .918) *
                              (1) /
                              children.length.toDouble(),
                          decoration: BoxDecoration(
                              color: sliderOptions!.indicatorColor,
                              borderRadius: BorderRadius.circular(
                                  sliderOptions!.radius!)),
                        ),
                        curve: Curves.fastOutSlowIn,
                        offset: Offset(currentIndex.toDouble(), 0),
                        duration: Duration(milliseconds: 550))
                  ],
                ),
              ),
            ),
          )
        : SizedBox();
  }
}
