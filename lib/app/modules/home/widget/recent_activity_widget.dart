import 'package:evalu8/app/core/theme/app_text_style.dart';
import 'package:evalu8/app/core/values/colors.dart';
import 'package:evalu8/app/modules/home/widget/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/values/icons.dart';

class RecentActivityWidget extends StatelessWidget {
  const RecentActivityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
     decoration: BoxDecoration(
       color: Colors.white,
       borderRadius: BorderRadius.circular(16)
     ),
      height: 210,
      child: Row(
        children: [
          ProductItem(),
          SizedBox(
            width: 24,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(profile,width: 23,),
                    SizedBox(width: 10,),
                    Column(children: [
                      Text('Name',style: AppTextStyles.r10Black,),
                      Text('1 hour ago',style: AppTextStyles.r5Black,),
                    ],),
                  ],
                ),
                SizedBox(width: 9,),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: primaryColor,
                      size: 17,
                    ),
                    Icon(
                      Icons.star,
                      color: primaryColor,
                      size: 17,
                    ),
                    Icon(
                      Icons.star,
                      color: primaryColor,
                      size: 17,
                    ),
                    Icon(
                      Icons.star,
                      color: primaryColor,
                      size: 17,
                    ),
                    Icon(
                      Icons.star,
                      color: primaryColor,
                      size: 17,
                    ),
                  ],
                ),
                SizedBox(width: 7,),
                Text(
                  'Lorem ipsum dolor sit amet consectetur. Tempor mi condimentum pretium sagittis urna mauris. Varius volutpat ac bibendum eu diam posuere ultrices. Pellentesque in commodo augue eu tellus tincidunt odio at cras. Pulvinar viverra commodo fringilla vitae.',
                  style: AppTextStyles.r10Black,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
