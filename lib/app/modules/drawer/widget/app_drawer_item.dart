import 'package:evalu8/app/core/theme/app_text_style.dart';
import 'package:evalu8/app/core/values/colors.dart';
import 'package:evalu8/app/core/values/icons.dart';
import 'package:evalu8/app/data/models/drawer.dart';
import 'package:evalu8/app/modules/drawer/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AppDrawerItem extends StatelessWidget {
  AppDrawerItem({Key? key, required this.icon, required this.title,required this.index})
      : super(key: key);
  String icon;
  String title;
  int index;

  AppDrawerController controller = Get.find<AppDrawerController>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        controller.changeRoute(index);
      },
      child: Container(
        padding: EdgeInsetsDirectional.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: index == AppDrawer.specifyResult.id ? Switch(

                activeTrackColor: secondaryColor,
                activeColor: Colors.white,
                value: controller.isSwitched,
                onChanged: (value) {
                  controller.isSwitched = value;
                  controller.update();
                },
              ) :SvgPicture.asset(icon,color: controller.selectedIndex == index ? Colors.white : secondaryColor,),
            ),
            Expanded(
                child: Text(
              title,
              style: AppTextStyles.b14.copyWith(color: color535763),
              textAlign: TextAlign.start,
              maxLines: 3,
            )),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }

}
