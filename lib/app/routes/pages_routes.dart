import 'package:evalu8/app/modules/on_boarding_screen/view.dart';
import 'package:evalu8/app/modules/splash/view.dart';
import 'package:get/get.dart';

import '../modules/Auth/login/CodeVerfication.dart';
import '../modules/Auth/login/EmailForForgetPassword.dart';
import '../modules/Auth/login/view.dart';
import '../modules/Auth/signup/view.dart';
import '../modules/FollowingPage.dart';
import '../modules/SearchPage.dart';
import '../modules/widgets/nav_bar.dart';
class AppPages{
  static List<GetPage<dynamic>>? routes = [
    //GetPage(name: "/splash_screen", page:()=> SplashScreen()),
    GetPage(name: "/", page: () => SplashPage()),
    GetPage(name: "/splash", page: () => SplashPage()),
    GetPage(name: '/OnBoarding', page: () => OnBoarding()),
    GetPage(name: "/home", page: () => BottomNavBar()),
    GetPage(name: "/SearchPage", page: () => SearchPage()),
    GetPage(name: "/FollowingPage", page: () => FollowingPage()),
    GetPage(name: '/SignUpPage', page: () => SignUpPage()),
    GetPage(name: '/LoginPage', page: () => LoginPage()),
    GetPage(name: '/EmailForForgetPasswordPage', page: () => EmailForForgetPasswordPage()),
    GetPage(name: '/CodeVerficationPage', page: () => CodeVerficationPage()),
  ];
}