import 'package:evalu8/app/data/models/drawer.dart';
import 'package:evalu8/app/routes/pages_routes.dart';
import 'package:get/get.dart';
import '../bottomNavigation/controller.dart';
class AppDrawerController extends GetxController{
  int selectedIndex = 0;
  bool isSwitched = false;
  changeRoute(int index){
    selectedIndex = index;
    Get.find<MainNavigationController>().key.currentState?.closeDrawer();
    if (Get.currentRoute == AppRoutes.main){
      if (Get.find<MainNavigationController>().index != 0 && index == 0){
        Get.find<MainNavigationController>().index = 0;
        Get.find<MainNavigationController>().update();
      }else{
        Get.toNamed(AppDrawer.all.where((element) => element.id == selectedIndex).first.navigateTo);
      }
    }else{
      Get.toNamed(AppDrawer.all.where((element) => element.id == selectedIndex).first.navigateTo);
    }
    update();
  }
}