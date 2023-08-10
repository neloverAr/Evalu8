import 'package:evalu8/app/core/values/images_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/theme/app_text_style.dart';
import '../../core/values/colors.dart';
import '../../core/values/icons.dart';
import '../widgets/AppButton.dart';
import '../widgets/app_bar.widget.dart';
class PostReviewPage extends StatelessWidget {
  const PostReviewPage({Key? key}) : super(key: key);

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
                    _buildHeader(),
                    _buildAddReview(),
                    SizedBox(height: 24,),
                    AppButton(
                      width: double.infinity,
                      fontWeight: FontWeight.w800,
                      elevation: 0,
                      fontSize: 18,
                      color: primaryColor,
                      borderRadius: 12,
                      isLoading: false,
                      title: "Post my Review",
                      onPressed: () {
                        // Get.toNamed(AppRoutes.home);
                      },
                    )
                  ],
                ),
              )
          )),
    );
  }
  Widget _buildHeader(){
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 6,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pan',
                    style: AppTextStyles.r16Black,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'KITCHEN TOOLS',
                    style: AppTextStyles.r10Black,
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Image.asset(product_sample,width: 70,height: 70,fit: BoxFit.cover,),)
            ],
          ),
        ));
  }
  Widget _buildAddReview(){
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 6,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  avatar,
                  height: 48,
                  width: 48,
                ),
                Expanded(child:  Text('Ashfak Sayem',style: AppTextStyles.b14.copyWith(color: secondaryColor),),),

              ],),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 8.0),
            child: Divider(height:5,color: color707070,),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
    keyboardType: TextInputType.multiline,
    maxLines: 9,
    decoration: InputDecoration(
      border: InputBorder.none,
              hintText: 'write your review'
            ),),
          ),

        ],
        ));
  }
}
