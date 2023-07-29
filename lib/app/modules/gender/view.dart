import 'package:evalu8/app/core/theme/app_text_style.dart';
import 'package:evalu8/app/core/values/icons.dart';
import 'package:evalu8/app/modules/gender/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../core/values/colors.dart';
import '../../core/values/images_path.dart';
import '../../routes/pages_routes.dart';
import '../widgets/AppBackground.dart';
import '../widgets/AppButton.dart';

class GenderSelectionPage extends StatelessWidget {
  GenderSelectionPage({Key? key}) : super(key: key);
  GenderSelectionController controller = Get.put(GenderSelectionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBackground(
              hasIcon: false,
              hasSkipFeature: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Text('Select your Gender',style: AppTextStyles.b18,),
                        const SizedBox(
                          height: 50,
                        ),
                        GetBuilder<GenderSelectionController>(builder: (_) {
                          return Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    child: Image.asset(controller
                                        .gender ==
                                        null
                                        ? Gender.girl.unSelectedImage
                                        : (controller.gender == Gender.girl
                                        ? Gender.girl.selectedImage
                                        : Gender.girl.unSelectedImage)),
                                    onTap: (){
                                      controller.changeSelectedGender(Gender.girl);
                                    },
                                  ),
                                  Text('or',style: AppTextStyles.b18.copyWith(color: color707070),),
                                  InkWell(
                                    child: Image.asset(controller
                                        .gender ==
                                        null
                                        ? Gender.boy.unSelectedImage
                                        : (controller.gender == Gender.boy
                                        ? Gender.boy.selectedImage
                                        : Gender.boy.unSelectedImage)),
                                    onTap: (){
                                      controller.changeSelectedGender(Gender.boy);
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              if(controller.showNextButton)...[
                                Padding(
                                  padding: const EdgeInsets.all(24),
                                  child: AppButton(
                                    width: double.infinity,
                                    fontWeight: FontWeight.w800,
                                    elevation: 0,
                                    fontSize: 18,
                                    color: primaryColor,
                                    borderRadius: 12,
                                    isLoading: false,
                                    title: "Next",
                                    onPressed: () {
                                      Get.offAllNamed(AppRoutes.dateOfBirthday);
                                      // Get.toNamed(AppRoutes.home);
                                    },
                                  ),
                                ),
                              ]
                            ],
                          );
                        }),
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
