import 'package:evalu8/app/modules/allMyReviews/view.dart';
import 'package:evalu8/app/modules/edit_password/view.dart';
import 'package:evalu8/app/modules/edit_profile/view.dart';
import 'package:evalu8/app/modules/gender/view.dart';
import 'package:evalu8/app/modules/home/view.dart';
import 'package:evalu8/app/modules/on_boarding_screen/view.dart';
import 'package:evalu8/app/modules/productReviews/view.dart';
import 'package:evalu8/app/modules/product_analysis/view.dart';
import 'package:evalu8/app/modules/product_details/view.dart';
import 'package:evalu8/app/modules/profile/view.dart';
import 'package:evalu8/app/modules/splash/view.dart';
import 'package:get/get.dart';
import '../modules/Auth/login/CodeVerfication.dart';
import '../modules/Auth/login/EmailForForgetPassword.dart';
import '../modules/Auth/login/view.dart';
import '../modules/Auth/signup/view.dart';
import '../modules/allReviews/view.dart';
import '../modules/bottomNavigation/main_navigation_Layout.dart';
import '../modules/dateOfBirthday/view.dart';
import '../modules/following/view.dart';
import '../modules/search/view.dart';

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
    GetPage(
      name: AppRoutes.gender,
      page: () => GenderSelectionPage(),
    ),
    GetPage(
      name: AppRoutes.dateOfBirthday,
      page: () => DateOfBirthdayPage(),
    ),
    GetPage(
      name: AppRoutes.productDetails,
      page: () => ProductDetailsPage(),
    ),
    GetPage(
      name: AppRoutes.postReview,
      page: () => PostReviewPage(),
    ),
    GetPage(
      name: AppRoutes.allReviews,
      page: () => AllReviewsPage(),
    ),
    GetPage(
      name: AppRoutes.productAnalysis,
      page: () => ProductAnalysisPage(
      ),
    ),
    GetPage(
      name: AppRoutes.allMyReviews,
      page: () => AllMyReviews(
      ),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => ViewProfilePage(
      ),
    ),
    GetPage(
      name: AppRoutes.editProfile,
      page: () => EditProfilePage(

      ),
    ),
    GetPage(
      name: AppRoutes.editPassword,
      page: () => EditPasswordPage(

      ),
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
  static const String gender = '/GenderSelectionPage';
  static const String dateOfBirthday = '/DateOfBirthdayPage';
  static const String profile = '/profile';
  static const String reviews = '/reviews';
  static const String settings = '/settings';
  static const String aboutUs = '/aboutUs';
  static const String productDetails = '/productDetails';
  static const String postReview = '/postReview';
  static const String allReviews = '/allReviews';
  static const String productAnalysis= '/productAnalysis';
  static const String allMyReviews = '/allMyReviews';
  static const String editProfile = '/editProfile';

  static const String editPassword = '/editPassword';



}