
import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension PercentSized on double{
  double get hp => (Get.height * (this/100));//height points
  double get wp => (Get.width * (this/100));//width points
}

extension ResponsiveText on double{
  double get sp => Get.width / 100 *(this/3);
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
class ValidatorUtils {
  static String? validatePassword(String value) {
    RegExp regex =
    RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{10,}$');
    if (!regex.hasMatch(value)) {
      return "\u29bf Password should be at least 10 characters long.\n\u29bf Password must include numbers,\n\u29bf Upper case letter,\n\u29bf Lower case letter letters\n\u29bf special characters.";
    } else {
      return null;
    }
  }
  static String? validateEmail(String value) {
    RegExp regex =
    RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (!regex.hasMatch(value)) {
      return 'Enter valid email';
    } else {
      return null;
    }
  }
}
