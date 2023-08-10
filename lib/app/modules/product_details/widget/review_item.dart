import 'package:evalu8/app/core/theme/app_text_style.dart';
import 'package:evalu8/app/core/values/colors.dart';
import 'package:evalu8/app/core/values/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/values/images_path.dart';
class ReviewItemWidget extends StatelessWidget {
  const ReviewItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1,color: colorE6EAEE)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                avatar,
                height: 48,
                width: 48,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Ashfak Sayem',style: AppTextStyles.b14.copyWith(color: secondaryColor),),
                Text('1 hour ago',style: AppTextStyles.r12.copyWith(color: color707070),),
              ],)
            ],
          ),
        Text('Lorem ipsum dolor sit amet consectetur. Imperdiet.',style: AppTextStyles.r12.copyWith(color: color707070),)
      ],),
    );
  }
}
