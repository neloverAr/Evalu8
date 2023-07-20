import 'package:evalu8/app/modules/widgets/AppBackground.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/values/colors.dart';
import '../../core/values/icons.dart';
import '../widgets/AppButton.dart';

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
                            color: secondaryColor,
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

class CustomTextField extends StatelessWidget {
  final TextFieldEnum type;
  CustomTextField(this.type);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, right: 24, left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            type.title,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: TextFormField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: EEEEEEColor, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: EEEEEEColor, width: 1),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
enum TextFieldEnum {
  fullName,
  email,
  password,
  confirmPassword;
}

extension PlaceholderExtension on TextFieldEnum {
  String get placeholder {
    switch (this) {
      case TextFieldEnum.fullName:
        return '';
      case TextFieldEnum.email:
        return '';
      case TextFieldEnum.password:
        return '';
      case TextFieldEnum.confirmPassword:
        return '';
    }
  }

  String get title {
    switch (this) {
      case TextFieldEnum.fullName:
        return 'Full Name';
      case TextFieldEnum.email:
        return 'Email';
      case TextFieldEnum.password:
        return 'Password';
      case TextFieldEnum.confirmPassword:
        return 'Confirm Password';
    }
  }}


