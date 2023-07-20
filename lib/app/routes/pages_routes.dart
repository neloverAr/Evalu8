import 'package:evalu8/app/modules/SignUp/signUpPage.dart';
import 'package:evalu8/app/modules/on_boarding_screen/OnBoarding.page.dart';
import 'package:evalu8/app/modules/splach/Splach.page.dart';
import 'package:get/get.dart';

import '../modules/FollowingPage.dart';
import '../modules/SearchPage.dart';
import '../modules/login/CodeVerfication.dart';
import '../modules/login/EmailForForgetPassword.dart';
import '../modules/login/login.dart';
import '../modules/widgets/nav_bar.dart';
class AppPages{
  static List<GetPage<dynamic>>? routes = [
    //GetPage(name: "/splash_screen", page:()=> SplashScreen()),
    GetPage(name: "/", page: () => BottomNavBar()),
    GetPage(name: "/SearchPage", page: () => SearchPage()),
    GetPage(name: "/FollowingPage", page: () => FollowingPage()),
    GetPage(name: '/OnBoarding', page: () => OnBoarding()),
    GetPage(name: '/SplachPage', page: () => SplachPage()),
    GetPage(name: '/SignUpPage', page: () => SignUpPage()),
    GetPage(name: '/LoginPage', page: () => LoginPage()),
    GetPage(name: '/EmailForForgetPasswordPage', page: () => EmailForForgetPasswordPage()),
    GetPage(name: '/CodeVerficationPage', page: () => CodeVerficationPage()),



  ];
}

