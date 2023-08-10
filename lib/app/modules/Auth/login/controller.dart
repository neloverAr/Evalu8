import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInController extends GetxController {
  final key = GlobalKey<FormState>();
  late Timer _timer;
  int start = 60;
  bool isLoading = false;
  bool isDisable = true;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    startTimer();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    _timer.cancel();
  }
  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start == 0) {
          timer.cancel();
          isLoading = false;
          update();
        } else {
          start--;
          update();
        }
      },
    );
  }
}
