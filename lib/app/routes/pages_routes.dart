import 'package:evalu8/app/modules/home/view.dart';
import 'package:evalu8/app/modules/on_boarding_screen/view.dart';
import 'package:evalu8/app/modules/splash/view.dart';
import 'package:get/get.dart';

import '../modules/Auth/login/CodeVerfication.dart';
import '../modules/Auth/login/EmailForForgetPassword.dart';
import '../modules/Auth/login/view.dart';
import '../modules/Auth/signup/view.dart';
import '../modules/HomePage.dart';
import '../modules/bottomNavigation/main_navigation_Layout.dart';
import '../modules/following/view.dart';
import '../modules/search/view.dart';
import '../modules/widgets/nav_bar.dart';

class AppPages {
  static List<GetPage<dynamic>>? routes = [
    //GetPage(name: "/splash_screen", page:()=> SplashScreen()),
    GetPage(name: AppRoutes.splash, page: () => SplashPage()),
    GetPage(name: AppRoutes.splash, page: () => SplashPage()),
    GetPage(name: AppRoutes.OnBoarding, page: () => OnBoarding()),
    GetPage(name: AppRoutes.home, page: () => HomePage()),
    GetPage(name: AppRoutes.searchPage, page: () => SearchPage()),
    GetPage(name: AppRoutes.followingPage, page: () => AllFollowingPage()),
    GetPage(name: AppRoutes.signUpPage, page: () => SignUpPage()),
    GetPage(name: AppRoutes.loginPage, page: () => LoginPage()),
    GetPage(
        name: AppRoutes.emailForForgetPasswordPage,
        page: () => EmailForForgetPasswordPage()),
    GetPage(
        name: AppRoutes.codeVerficationPage, page: () => CodeVerficationPage()),
    GetPage(
      name: AppRoutes.main,
      page: () => MainNavigationLayout(),
    ),
  ];
}

class AppRoutes {
  static const String splash = "/";
  static const String OnBoarding = '/OnBoarding';
  static const String home = '/home';
  static const String searchPage = "/SearchPage";
  static const String followingPage = "/FollowingPage";
  static const String signUpPage = '/SignUpPage';
  static const String loginPage = '/LoginPage';
  static const String emailForForgetPasswordPage =
      '/EmailForForgetPasswordPage';
  static const String codeVerficationPage = '/CodeVerficationPage';
  static const String main = "/main";
}
