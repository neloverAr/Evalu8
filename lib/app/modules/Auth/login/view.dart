import 'package:evalu8/app/modules/Auth/login/controller.dart';
import 'package:evalu8/app/modules/widgets/AppBackground.dart';
import 'package:evalu8/app/modules/widgets/AppButton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/values/colors.dart';
import '../../../routes/pages_routes.dart';
import '../widgets/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  LogInController controller = Get.put(LogInController());

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
                hasIcon: false,
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
                              height: 74,
                            ),
                            CustomTextField(type:TextFieldEnum.userName),
                            CustomTextField(type:TextFieldEnum.password),
                            Row(
                              children: [
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 24),
                                  child: GestureDetector(
                                      onTap: () {
                                        Get.toNamed(
                                            '/EmailForForgetPasswordPage');
                                      },
                                      child: const Text(
                                        'forget Password?',
                                        textAlign: TextAlign.end,
                                      )),
                                ),
                              ],
                            ),
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
                                title: "Log in",
                                onPressed: () {
                                  if (controller.key.currentState!
                                      .validate()) {
                                    Get.offAllNamed(AppRoutes.main);
                                  }
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: RichText(
                                  text: TextSpan(children: [
                                const TextSpan(
                                  text: 'Don’t have account? ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                ),
                                TextSpan(
                                    text: 'sign up ',
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap =
                                          () => Get.toNamed('/SignUpPage')),
                              ])),
                            )
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
