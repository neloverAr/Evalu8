import 'package:evalu8/app/modules/widgets/AppBackground.dart';
import 'package:flutter/material.dart';
import '../../../core/values/colors.dart';
import '../../widgets/AppButton.dart';
import '../widgets/custom_textfield.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppBackground(),
            Positioned(
              child: Container(
                child:  Card(
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
                        CustomTextField(TextFieldEnum.email),
                        CustomTextField(TextFieldEnum.password),
                        CustomTextField(TextFieldEnum.confirmPassword),
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
                            onPressed: () {},
                          ),
                        ),
                      ],
                    )
                ),
              ),),],
        ),
      ),
    );
  }
}