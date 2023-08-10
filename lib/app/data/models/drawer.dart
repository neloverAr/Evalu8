import 'package:evalu8/app/core/values/icons.dart';
import 'package:evalu8/app/routes/pages_routes.dart';

enum AppDrawer {
  home,
  profile,
  reviews,
  settings,
  aboutUs,
  support,
  specifyResult,
  looOut;
  String get displayTitle {
    switch (this) {
      case AppDrawer.home:
        return 'Home';
      case AppDrawer.profile:
        return 'Profile';
      case AppDrawer.reviews:
        return 'All my Reviews';
      case AppDrawer.settings:
        return 'Settings';
      case AppDrawer.aboutUs:
        return 'About Us';
      case AppDrawer.support:
        return 'Support';
      case AppDrawer.specifyResult:
        return 'Specify the Results';
      case AppDrawer.looOut:
        return 'Log Out';
      default:
        return '';
    }
  }
  String get icon {
    switch (this) {
      case AppDrawer.home:
        return home_drawer;
      case AppDrawer.profile:
        return profile_icon;
      case AppDrawer.reviews:
        return  messages;
      case AppDrawer.settings:
        return setting;
      case AppDrawer.aboutUs:
        return  about_Us;
      case AppDrawer.support:
        return phone;
      case AppDrawer.specifyResult:
        return phone;
      case AppDrawer.looOut:
        return logout;
      default:
        return '';
    }
  }
  int get id {
    switch (this) {
      case AppDrawer.home:
        return 0;
      case AppDrawer.profile:
        return 1;
      case AppDrawer.reviews:
        return 2;
      case AppDrawer.settings:
        return 3;
      case AppDrawer.aboutUs:
        return 4;
      case AppDrawer.support:
        return 5;
      case AppDrawer.specifyResult:
        return 6;
      case AppDrawer.looOut:
        return 7;
      default:
        return 8;
    }
  }
  String get navigateTo {
    switch (this) {
      case AppDrawer.home:
        return AppRoutes.home;
      case AppDrawer.profile:
        return AppRoutes.profile;
      case AppDrawer.reviews:
        return AppRoutes.allMyReviews;
      case AppDrawer.settings:
        return AppRoutes.settings;
      case AppDrawer.aboutUs:
        return AppRoutes.aboutUs;
      case AppDrawer.support:
        return '';
      case AppDrawer.specifyResult:
        return '';
      case AppDrawer.looOut:
        return '';
      default:
        return '';
    }
  }
   static List<AppDrawer> get all => AppDrawer.values;
}
