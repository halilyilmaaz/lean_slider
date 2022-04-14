import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LeanSliderController extends GetxController {
  final GlobalKey scaffoldKey = GlobalKey<ScaffoldState>();

  late PageController pageController;
  late Rx<int> _imagePositionIndex;

  //static BuildContext context;

  LeanSliderController() {
    pageController = PageController();
    _imagePositionIndex = 0.obs;
  }


  bool isImage = false;

  int activePage = 0;
  int get imagePositionIndex => _imagePositionIndex.value;

  set imagePositionIndex(int value) {
    _imagePositionIndex.value = value;
  }
}