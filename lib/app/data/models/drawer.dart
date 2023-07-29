import 'package:evalu8/app/core/values/icons.dart';

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
   static List<AppDrawer> get all => AppDrawer.values;
}
