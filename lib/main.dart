import 'package:evalu8/app/modules/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBar(),
    );
    // //StorageService storageService = Get.find();
    // //Get.put(NotificationController());
    // return GetMaterialApp(
    //   getPages: routes,
    //   title: 'Flutter Demo',
    //   debugShowCheckedModeBanner: false,
    //   //home: const SplashScreen(),
    // );
  }
}
