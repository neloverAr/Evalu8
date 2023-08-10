import 'package:evalu8/app/core/theme/app_text_style.dart';
import 'package:evalu8/app/core/values/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../routes/pages_routes.dart';
import '../controller.dart';

class ProductReviewStartWidget extends StatelessWidget {
  ProductReviewStartWidget({Key? key}) : super(key: key);
  ProductDetailsController controller = Get.find<ProductDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 6,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Icon(Icons.star,color: primaryColor,),
                Icon(Icons.star,color: primaryColor,),
                Icon(Icons.star,color: primaryColor,),
                Icon(Icons.star,color: primaryColor,),
                Text('(3.0)',style: AppTextStyles.r12.copyWith(color: colorC4C4C4),)
              ],),
              InkWell(child: Text('see reviews',style: AppTextStyles.b14.copyWith(color: color0B99FF)),onTap: (){
                Get.toNamed(AppRoutes.productAnalysis);
              },)
            ],
          ),
        ));
    ;
  }
}


