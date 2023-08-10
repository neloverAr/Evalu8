import 'package:evalu8/app/modules/product_details/widget/review_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../routes/pages_routes.dart';
import '../controller.dart';
import 'package:evalu8/app/core/theme/app_text_style.dart';
import 'package:evalu8/app/core/values/colors.dart';

class ProductReviewesWidget extends StatelessWidget {
  ProductReviewesWidget({Key? key}) : super(key: key);
  ProductDetailsController controller = Get.find<ProductDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 6,
        child:  Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Reviews:',style: AppTextStyles.b14.copyWith(color: secondaryColor),),
                GestureDetector(child: Text('see all',style: AppTextStyles.b14.copyWith(color: color0B99FF)),onTap: (){
                  Get.toNamed(AppRoutes.allReviews);
                },),
              ],),
              SizedBox(height: 12,),
              ReviewItemWidget(),
              ReviewItemWidget(),
            ],),
        ));
  }}