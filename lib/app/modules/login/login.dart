import 'package:evalu8/app/modules/widgets/AppBackground.dart';
import 'package:evalu8/app/modules/widgets/AppButton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/values/colors.dart';
import '../SignUp/signUpPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppBackground(),
            Positioned(
              child: Container(
                child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 74,
                        ),
                        CustomTextField(TextFieldEnum.fullName),
                        CustomTextField(TextFieldEnum.password),
                        Row(
                          children: [
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 24),
                              child: GestureDetector(onTap:(){
                                Get.toNamed('/EmailForForgetPasswordPage');
                              },child: Text('forget Password?',textAlign: TextAlign.end,)),
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
                            color: secondaryColor,
                            borderRadius: 12,
                            isLoading: false,
                            title: "Sign Up",
                            onPressed: () {},
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(text: 'Don’t have account?', style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),),
                            TextSpan(
                                text: 'sign up ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Get.toNamed('/SignUpPage')),
                          ])),
                        )
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
