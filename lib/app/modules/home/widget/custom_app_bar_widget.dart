import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/values/icons.dart';
import '../../bottomNavigation/controller.dart';
class CustomAppBar extends StatelessWidget  implements PreferredSizeWidget  {
   CustomAppBar({Key? key}) : super(key: key);
  MainNavigationController controller = Get.find<MainNavigationController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(bottom: 8,left: 24,right: 24),
        color: Colors.transparent,
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.menu),onPressed: (){
             // controller.scaffoldKey.currentState!.op;
              controller.key.currentState?.openDrawer();
            },),
            Spacer(),
            SvgPicture.asset(
              logo,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(40);
}
