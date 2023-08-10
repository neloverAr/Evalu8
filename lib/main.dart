import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/pages_routes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      //initialRoute: '/OnBoarding',
      getPages: AppPages.routes,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //home: const SplashScreen(),
    );
  }
}
