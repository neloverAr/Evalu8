import 'package:evalu8/app/core/theme/app_text_style.dart';
import 'package:evalu8/app/core/values/colors.dart';
import 'package:evalu8/app/core/values/images_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/values/icons.dart';

class FollowItem extends StatelessWidget {
   FollowItem({Key? key,required this.index}) : super(key: key);
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(12),
      decoration: BoxDecoration(
        color: index %2 == 0 ? primaryColor.withOpacity(0.2) : color898989.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12)
      ),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            child: Image.asset(product,width: 90,height: 90,fit: BoxFit.cover,),
            borderRadius: BorderRadius.circular(12),
          ),
          Column(
            children: [
              Text('Apple AirPods Pro',style: AppTextStyles.b18,),
              SizedBox(height: 5,),
              Text('ELECTRONICS', style: AppTextStyles.r18.copyWith(color: color898989),),
              SizedBox(height: 5,),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.star,size: 18,color: primaryColor,),
                      Icon(Icons.star,size: 18,color: primaryColor,),
                      Icon(Icons.star,size: 18,color: primaryColor,),
                      Icon(Icons.star,size: 18,color: primaryColor,),
                      Icon(Icons.star,size: 18,color: primaryColor,),
                    ],
                  ),
                  Text('5 reviews', style: AppTextStyles.r12.copyWith(color: color898989),),
                ],
              )
            ],
          ),
          SvgPicture.asset(checked_icon,color: primaryColor,)
        ],
      ),
    );
  }
}
