import 'package:evalu8/app/modules/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/pages_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    //StorageService storageService = Get.find();
    //Get.put(NotificationController());
    return  GetMaterialApp(
      //initialRoute: '/OnBoarding',
      getPages: AppPages.routes,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //home: const SplashScreen(),
    );
  }
  // Widget build(BuildContext context) {
  //   // return MaterialApp(
  //   //   home: BottomNavBar(),
  //   // );
  //   //StorageService storageService = Get.find();
  //   //Get.put(NotificationController());
  //   return GetMaterialApp(
  //     getPages: routes,
  //     title: 'Flutter Demo',
  //     debugShowCheckedModeBanner: false,
  //     //home: const SplashScreen(),
  //   );
  // }
}
