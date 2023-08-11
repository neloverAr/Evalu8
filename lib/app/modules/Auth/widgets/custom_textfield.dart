import 'package:evalu8/app/core/utils/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../core/values/colors.dart';
import '../login/controller.dart';

class CustomTextField extends StatelessWidget {
  final TextFieldEnum type;
  final bool? isShowTitle;
  final String? label;
  final String? hintText;
  CustomTextField({required this.type, this.isShowTitle, this.label,this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, right: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
              visible: isShowTitle ?? true,
              child: Text(
                type.title,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              )),
          const SizedBox(
            height: 4,
          ),
          Container(
            child: TextFormField(
              autovalidateMode: (AutovalidateMode.onUserInteraction),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'this field required';
                }
                switch (type) {
                  case TextFieldEnum.userName:
                    return null;
                  case TextFieldEnum.password:
                    return ValidatorUtils.validatePassword(value);
                  case TextFieldEnum.confirmPassword:
                    return ValidatorUtils.validatePassword(value);
                  case TextFieldEnum.userName:
                    return null;
                  case TextFieldEnum.email:
                    return ValidatorUtils.validateEmail(value);
                  default:
                    return null;
                }
              },
              cursorColor: Colors.black,
              decoration:  InputDecoration(
                  label: Visibility(
                    child: Text('${this.label ?? ''}'),
                    visible:this.label != null,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: EEEEEEColor, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: EEEEEEColor, width: 1),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: EEEEEEColor, width: 1),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: EEEEEEColor, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
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
  confirmPassword,
  userName,
  firstName,
  lastName,
  currentPassword,
  newPassword,confirmNewPassword;
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
      case TextFieldEnum.userName:
        return '';
      default:
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
      case TextFieldEnum.userName:
        return 'UserName';
      case TextFieldEnum.firstName:
        return 'First Name';
      case TextFieldEnum.lastName:
        return 'Last Name';
      case TextFieldEnum.newPassword:
        return 'New Password';
      case TextFieldEnum.currentPassword:
        return 'Current Password';
      case TextFieldEnum.confirmNewPassword:
        return 'Confirm New Password';
    }
  }
}
