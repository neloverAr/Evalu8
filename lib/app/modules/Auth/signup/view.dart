import 'package:evalu8/app/data/services/firebase/firebase_util.dart';
import 'package:evalu8/app/modules/Auth/signup/model/user.dart';
import 'package:evalu8/app/modules/widgets/AppBackground.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import '../../../core/values/colors.dart';
import '../../../routes/pages_routes.dart';
import '../../widgets/AppButton.dart';
import '../widgets/custom_textfield.dart';
import 'controller.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  SignUpController controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: controller.key,
          child: Column(
            //fit: StackFit.loose,
            children: [
              AppBackground(
                hasIcon: true,
              ),
              Center(
                child: Padding(
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
                              height: 60,
                            ),
                            CustomTextField(type: TextFieldEnum.fullName,),
                            CustomTextField(type: TextFieldEnum.email),
                            CustomTextField(type: TextFieldEnum.password),
                            CustomTextField(type: TextFieldEnum
                                .confirmPassword),
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
                                title: "Sign Up",
                                onPressed: () {
                                  if (controller.key.currentState
                                      ?.validate() == true) {
                                    print(controller.key.currentState?.val(
                                      "user_name",
                                    ));
                                    // print(controller.key.currentState?.getRawValue(
                                    //   "user_name",
                                    // ));
                                  }
                                  // if (controller.key.currentState!.validate()) {
                                  //   Get.offAllNamed(AppRoutes.main);
                                  // }
                                },
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
