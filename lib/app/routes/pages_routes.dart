

import 'package:get/get.dart';

import '../modules/FollowingPage.dart';
import '../modules/SearchPage.dart';
import '../modules/widgets/nav_bar.dart';

List<GetPage<dynamic>>? routes = [
  //GetPage(name: "/splash_screen", page:()=> SplashScreen()),
    GetPage(name: "/", page:()=> BottomNavBar()),

  // GetPage(name: "/onBoarding-screen", page:()=> OnboardingScreen(),middlewares: [
  //   MyMiddleware(),
  // ]),
   GetPage(name: "/SearchPage", page:()=> SearchPage()),
   GetPage(name: "/FollowingPage", page:()=> FollowingPage()),
];