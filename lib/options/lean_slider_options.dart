import 'package:flutter/material.dart';


class SliderOptions {
  /// [LeanSlider]

  /// for list images [images]

  /// we wrote for the parent widget of the [indicator] function
  final Color? barColor;

  /// We wrote this property for in [AnimatedSlide] child [Container]
  final Color? indicatorColor;

  /// Defined to give the width of the bar
  final double? barWidth;

  /// Defined to give the height of the bar
  final double? barHeight;

  /// Defined to give the radius of the bar
  final double? radius;

  SliderOptions(
      {this.radius, this.barHeight, this.barWidth, this.barColor, this.indicatorColor});
}
