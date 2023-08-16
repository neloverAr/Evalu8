import 'package:evalu8/app/core/values/colors.dart';
import 'package:evalu8/app/modules/drawer/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../core/values/icons.dart';
import '../home/widget/custom_app_bar_widget.dart';
import 'controller.dart';

class MainNavigationLayout extends StatelessWidget {
  MainNavigationLayout({Key? key}) : super(key: key);
  MainNavigationController controller = Get.put(
    MainNavigationController(),
    permanent: true,
  );

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainNavigationController>(builder: (_) {
      return Scaffold(
        key: controller.key,
        appBar: AppBar(
          title: SvgPicture.asset(
            logo,
          ),
          leading: IconButton(icon: Icon(Icons.menu,color: Colors.black,),onPressed: (){
            // controller.scaffoldKey.currentState!.op;
            controller.key.currentState?.openDrawer();
          },),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        //CustomAppBar(),
        drawer: AppDrawerWidget(),
        body: SafeArea(
          child: Stack(children: [
            controller.pages[controller.index].page,
          PositionedDirectional(
          bottom: 10,
          start: 10,
          end: 10,
          child:
               Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.9),
                      blurRadius: 7,
                      offset: Offset(0, 3),
                      spreadRadius: 1)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                  controller.pages.length,
                      (index) => GestureDetector(
                      onTap: (){
                        controller.changePage(index);
                      },
                      child: SvgPicture.asset(controller.pages[index].path,color: controller.index == index ? primaryColor : Colors.grey,))),
            ),
          )
          )

          ],),
        ),
      );
    });
  }
}
