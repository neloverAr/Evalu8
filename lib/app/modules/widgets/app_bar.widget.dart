import 'package:evalu8/app/core/theme/app_text_style.dart';
import 'package:evalu8/app/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class AppBarWidget extends StatelessWidget  implements PreferredSizeWidget{
   AppBarWidget({Key? key,required this.title}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){
          Get.back();
        },),
          Expanded(child: Container()),
          Text(title,style: AppTextStyles.b20.copyWith(color: secondaryColor),),
          Expanded(child: Container()),
      ],),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
@override
Widget build(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(
        horizontal:
        8),
    child: Row(
      children: [
        IconButton(icon: Icon(Icons.arrow_back_ios,),onPressed: (){
          Get.back();
        },),
        const Spacer(),
        Text('data')
      ],
    ),
  );
}

