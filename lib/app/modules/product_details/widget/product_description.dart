import 'package:evalu8/app/core/theme/app_text_style.dart';
import 'package:evalu8/app/core/values/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/AppButton.dart';
import '../controller.dart';

class ProductDescriptionWidget extends StatelessWidget {
  ProductDescriptionWidget({Key? key}) : super(key: key);
  ProductDetailsController controller = Get.find<ProductDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 6,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Product Description:',
                style: AppTextStyles.b14.copyWith(color: secondaryColor),
              ),
              SizedBox(
                height: 8,
              ),
              GetBuilder<ProductDetailsController>(builder: (_) {
                return RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: controller.hasMore
                          ? 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
                          : 'Lorem ipsum dolor sit amet consectetur. Imperdiet ...',
                      style: AppTextStyles.r12.copyWith(color: color707070)),
                  TextSpan(
                    text: controller.hasMore ? 'less' : 'more',
                    style: AppTextStyles.b14.copyWith(color: color0B99FF),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // controller.hasMore = !(controller.hasMore);
                        // controller.update();
                        Get.dialog(
                          Dialog(
                              insetPadding: EdgeInsets.symmetric(
                                horizontal: 24,
                              ),
                              backgroundColor: Colors.white,
                              surfaceTintColor: Colors.white,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Product Description:',
                                      style: AppTextStyles.r18700w,
                                    ),
                                    Text(
                                      'Lorem ipsum dolor sit amet consectetur. Dictum semper integer consectetur arcu venenatis bibendum dolor. Adipiscing mi justo tristique mi mus arcu non nec risus. In ut et aliquam tincidunt nam. Nec feugiat lacinia aliquet vitae. Pulvinar nibh lorem nunc neque lectus at in vestibulum. Vulputate morbi varius pellentesque risus. Morbi a nibh sed nibh consequat arcu at. Commodo velit curabitur cras id malesuada. Enim lacus viverra facilisis neque semper molestie vel at lectus. Ultrices aliquam sagittis ultricies quisque nisl risus mattis. Sed semper sodales at dictumst condimentum enim felis. Est pellentesque semper ac neque. At venenatis orci eget volutpat.',
                                      style: AppTextStyles.r12
                                          .copyWith(color: color707070),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(child: Container()),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(right: 16),
                                            child: InkWell(child: Text('ok',style: AppTextStyles.b18.copyWith(color: color0B99FF),textAlign: TextAlign.end,),onTap: (){
                                              Get.back();
                                            },),
                                          )),
                                          ],
                                    )
                                  ],
                                ),
                              )),
                        );
                      },
                  )
                ]));
              }),
            ],
          ),
        ));
    ;
  }
}