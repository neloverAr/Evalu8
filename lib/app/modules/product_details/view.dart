import 'package:evalu8/app/modules/product_details/controller.dart';
import 'package:evalu8/app/modules/product_details/widget/product_description.dart';
import 'package:evalu8/app/modules/product_details/widget/product_image_item.dart';
import 'package:evalu8/app/modules/product_details/widget/product_review_star.dart';
import 'package:evalu8/app/modules/product_details/widget/product_reviews.dart';
import 'package:evalu8/app/modules/widgets/app_bar.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/values/colors.dart';
import '../../routes/pages_routes.dart';
import '../widgets/AppButton.dart';

class ProductDetailsPage extends StatelessWidget {
  ProductDetailsPage({Key? key}) : super(key: key);
  ProductDetailsController controller = Get.put(ProductDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Pin',
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 24),
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              ProductImageItem(),
              ProductDescriptionWidget(),
              ProductReviewStartWidget(),
              ProductReviewesWidget(),
              SizedBox(height: 24,),
              AppButton(
                width: double.infinity,
                fontWeight: FontWeight.w800,
                elevation: 0,
                fontSize: 18,
                color: primaryColor,
                borderRadius: 12,
                isLoading: false,
                title: "Add Review",
                onPressed: () {
                   Get.toNamed(AppRoutes.postReview);
                },
              )
            ],
          ),
        )
      )),
    );
  }
}
