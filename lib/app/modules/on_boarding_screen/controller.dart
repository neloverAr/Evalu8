import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  final pageViewController = PageController(keepPage: true);
  Rx<int> currentIndex = 0.obs;

  Future getData() async{

  }

  @override
  void onInit() {

    getData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeCurrentIndex(int index) {
    currentIndex.value = index;

  }

  void goToStart(){
    Get.toNamed("home");
  }


}
