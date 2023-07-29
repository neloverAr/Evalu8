import 'package:evalu8/app/core/values/icons.dart';
import 'package:evalu8/app/core/values/images_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class GenderSelectionController extends GetxController{
  Gender? gender;
  bool showNextButton = false;
  changeSelectedGender(Gender selectedGender){
    gender = selectedGender;
    showNextButton = true;
    update();
  }
}
enum Gender{
  girl,boy;
  String get selectedImage {
    switch(this){
      case Gender.boy:
      return selected_gender_boy;
      case Gender.girl:
    return selected_gender_girl;
    }
  }
  String get unSelectedImage {
    switch(this){
      case Gender.boy:
        return gender_boy;
      case Gender.girl:
        return gender_girl;
    }
  }
}