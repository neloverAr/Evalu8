import 'package:evalu8/app/core/theme/app_text_style.dart';
import 'package:evalu8/app/core/values/icons.dart';
import 'package:evalu8/app/core/values/images_path.dart';
import 'package:evalu8/app/modules/product_details/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';

import '../../../core/values/colors.dart';

class ProductImageItem extends StatelessWidget {
  ProductImageItem({Key? key}) : super(key: key);
  ProductDetailsController controller = Get.find<ProductDetailsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          elevation: 6,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                child: GetBuilder<ProductDetailsController>(builder: (_) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        controller.images[controller.imageIndex],
                        fit: BoxFit.fitWidth,
                        width: double.infinity,
                      ),
                      Visibility(
                        visible: controller.imageIndex != controller.images.length - 1,
                        child: Positioned(
                            top: 100,
                            right: 0,
                            child: IconButton(
                              icon: const Icon(
                                Icons.navigate_next,
                                size: 30,
                                color: color707070,
                              ),
                              onPressed: () {
                                controller.next();
                              },
                            )),
                      ),
                      Visibility(
                        visible: controller.imageIndex != 0,
                        child: Positioned(
                            top: 100,
                            left: 0,
                            child: IconButton(
                              icon: const Icon(
                                Icons.navigate_before,
                                size: 30,
                                color: color707070,
                              ),
                              onPressed: () {
                                controller.previous();
                              },
                            )),
                      ),
                      Positioned(
                          bottom: 16,
                          child: Row(
                            children: [
                              ...List.generate(
                                  3,
                                      (index) => AnimatedContainer(
                                      duration:
                                      const Duration(milliseconds: 300),
                                      margin: const EdgeInsets.only(right: 5),
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                          color: index ==
                                              controller.currentIndex
                                              ? secondaryColor
                                              : Color(0xFFD9D9D9),
                                          borderRadius:
                                          BorderRadius.circular(10)))),
                            ],
                          ))

                    ],
                  );
                }),
              ),
              Padding(
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
                    SvgPicture.asset(plus_icon)
                  ],
                ),
              )
            ],
          )),
    );
  }
}
