import 'package:evalu8/app/core/theme/app_text_style.dart';
import 'package:evalu8/app/modules/drawer/widget/app_drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/values/icons.dart';
import '../../core/values/images_path.dart';
import '../../data/models/drawer.dart';
import '../bottomNavigation/controller.dart';

class AppDrawerWidget extends StatelessWidget {
   AppDrawerWidget({Key? key}) : super(key: key);
  MainNavigationController controller = Get.find<MainNavigationController>();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      backgroundColor: Colors.white,
      shadowColor: Colors.black,
      child: Container(
        padding: EdgeInsetsDirectional.all(24),
        decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(image: AssetImage(drawer), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDrawerHeader(),
            ...List.generate(
                6,
                (index) {
                  return AppDrawerItem(
                    icon: AppDrawer.all[index].icon,
                    title: AppDrawer.all[index].displayTitle,
                  );
                }),
            Expanded(child: Container()),
            AppDrawerItem(
              icon: AppDrawer.specifyResult.icon,
              title: AppDrawer.specifyResult.displayTitle,
            ),
            AppDrawerItem(
              icon: AppDrawer.looOut.icon,
              title: AppDrawer.looOut.displayTitle,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(avatar,height: 48,width: 48,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ashfak Sayem',
                style: AppTextStyles.b18.copyWith(color: Colors.black),
              ),
              Text('Ashfak Sayem'),
            ],
          ),
          GestureDetector(child: SvgPicture.asset(close),onTap: (){
            controller.key.currentState?.closeDrawer();
          },),
        ],
      ),
    );
  }
}
