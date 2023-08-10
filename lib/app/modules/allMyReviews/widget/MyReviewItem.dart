import 'package:flutter/material.dart';

import '../../../core/theme/app_text_style.dart';
import '../../../core/values/colors.dart';
import '../../../core/values/images_path.dart';
class MyReviewItem extends StatelessWidget {
  const MyReviewItem({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(12),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
          color:  primaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12)
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: ClipRRect(
              child: Image.asset(product,width: 90,height: 90,fit: BoxFit.cover,),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Apple AirPods Pro',style: AppTextStyles.b18,),
              SizedBox(height: 5,),
              Text('ELECTRONICS', style: AppTextStyles.r10Black.copyWith(color: color898989),),
              SizedBox(height: 5,),
              Text('Lorem ipsum dolor sit \namet consectetur. Imperdiet.', style: AppTextStyles.r12.copyWith(color: color898989),),
            ],
          ),
          Spacer()
        ],
      ),
    );
  }
}
