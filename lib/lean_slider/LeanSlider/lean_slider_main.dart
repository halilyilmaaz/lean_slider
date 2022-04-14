import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean_slider/lean_slider/LeanSlider/controller/lean_slider_controller.dart';
import 'package:lean_slider/lean_slider/LeanSlider/view/lean_slider_view.dart';
import 'package:lean_slider/options/lean_slider_options.dart';

class Slide extends StatelessWidget {
  const Slide.lean(
      {Key? key,
      this.height = 1,
      this.width = 1,
      required this.children,
      this.sliderOptions})
      : super(key: key);
  final double? height;
  final double? width;
  final List<dynamic> children;
  final SliderOptions? sliderOptions;
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: LeanSliderController(),
      builder: (_) => LeanSliderView(
        height: height!,
        width: width!,
        children: children,
        sliderOptions: sliderOptions,
      ),
    );
  }
}
