import 'package:flutter/material.dart';
import '../../../core/values/colors.dart';

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
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18),
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            child: TextFormField(
              cursorColor: Colors.black,
              decoration: const InputDecoration(
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