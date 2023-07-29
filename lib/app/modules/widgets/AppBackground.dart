import 'package:evalu8/app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../core/values/colors.dart';
import '../../core/values/icons.dart';
import '../../core/values/images_path.dart';

class AppBackground extends StatelessWidget {
   AppBackground({Key? key,required this.hasIcon,this.hasSkipFeature}) : super(key: key);
  bool hasIcon;
  bool? hasSkipFeature = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SvgPicture.asset(
                backgroundYellow,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  end: 24,
                    top: MediaQuery.of(context).padding.top + 12),
                child: Row(

                  children: [
                  if (hasIcon)...[
                    IconButton(onPressed: (){
                      Get.back();
                    }, icon: Icon(Icons.arrow_back_ios,color: secondaryColor,)),
                  ],
                  Expanded(child: Container()),
                  SvgPicture.asset(logo,fit: BoxFit.fill,),
                    Expanded(child: Container()),
                    if (hasSkipFeature ?? false)...[
                    InkWell(child: Text('Skip',style: AppTextStyles.b18.copyWith(color: color707070),),onTap: (){},)
                    ],
                    if (!(hasSkipFeature ?? false))...[
                      Expanded(child: Container()),
                    ],
                ],),
              )
            ],
          )
        ],
      ),
    );
  }
}
