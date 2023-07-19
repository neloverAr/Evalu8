
import 'package:evalu8/app/core/values/images_path.dart';
import 'package:evalu8/app/modules/splash/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);
  SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                splashScreen),
                fit: BoxFit.fitHeight
            )
        ),
      ),
    );
  }
}
