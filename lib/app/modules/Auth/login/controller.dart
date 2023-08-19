import 'dart:async';

import 'package:evalu8/app/data/services/firebase/firebase_util.dart';
import 'package:evalu8/app/routes/pages_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../widgets/app_dialog.dart';

class LogInController extends GetxController {
  final key = GlobalKey<FormBuilderState>();
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

  signIn() {
    EasyLoading.show();
    FirebaseUtil.shared.signIn(key.currentState?.getRawValue("email"),
        key.currentState?.getRawValue("password"), onSuccess: () {
      EasyLoading.dismiss();
      Get.toNamed(AppRoutes.main);
    }, onError: (e) {
      EasyLoading.dismiss();
      if (e == 'user-not-found') {
        print('No user found for that email.');
        Get.dialog(
          AttentionDialog(
            description: 'No user found for that email.',
            cancelText: "cancel".tr,
            onCancel: () {
              Get.back();
            },
            onTap: () {
              Get.back();
            },
          ),
        );
      } else if (e == 'wrong-password') {
        print('Wrong password provided for that user.');
        Get.dialog(
          AttentionDialog(
            description: 'Wrong password provided for that user.',
            cancelText: "cancel".tr,
            onCancel: () {
              Get.back();
            },
            onTap: () {
              Get.back();
            },
          ),
        );
      }
    });
  }
}
