import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {


  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed("OnBoarding");
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


}
