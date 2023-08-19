import 'package:evalu8/app/data/services/firebase/firebase_util.dart';
import 'package:evalu8/app/modules/Auth/signup/model/user.dart';
import 'package:evalu8/app/routes/pages_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:intl/intl.dart';

import '../../../core/values/images_path.dart';
import '../../widgets/app_dialog.dart';
class SignUpController extends GetxController {
  final key = GlobalKey<FormBuilderState>();
  late AppUser? user;
  Gender? gender;
  bool showNextButton = false;
  DateTime? pickedDate;
  TextEditingController dateinput = TextEditingController();
  String? formattedDate;
  openCalender() async {
    pickedDate = await showDatePicker(
        context: Get.context!, initialDate: DateTime.now(),
        firstDate: DateTime(1970), //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime.now()
    );
    if(pickedDate != null ){
      formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate!);
      dateinput.text = formattedDate ?? "";
    }else{
      print("Date is not selected");
    }
  }
  changeSelectedGender(Gender selectedGender){
    gender = selectedGender;
    showNextButton = true;
    update();
  }
  setGender(){
    EasyLoading.show();
    user = user?.copyWith(gender: gender != null ? gender?.name : "",fullName: user?.fullName ?? "");
    FirebaseUtil.shared.addMoreInfoForUser(user, onSuccess: (){
      EasyLoading.dismiss();
      Get.offAllNamed(AppRoutes.dateOfBirthday);
    }, onError: (error){
      EasyLoading.dismiss();
    });
  }
  setDateOfBirthday(){
    EasyLoading.show();
    user = user?.copyWith(dateOfBirth: gender != null ? formattedDate : "",fullName: user?.fullName ?? "",gender: user?.gender ?? "");
    FirebaseUtil.shared.addMoreInfoForUser(user, onSuccess: (){
      EasyLoading.dismiss();
      Get.offAllNamed(AppRoutes.main);
    }, onError: (error){
      EasyLoading.dismiss();
    });
  }
  setFullName(){
    user = user?.copyWith(fullName: key.currentState?.getRawValue("fullName"));
    FirebaseUtil.shared.addMoreInfoForUser(user, onSuccess: (){
    }, onError: (error){
    });
  }
  createUser() {
    user = AppUser(
        password: key.currentState?.getRawValue("password"),
        fullName: key.currentState?.getRawValue("fullName"),
        email: key.currentState?.getRawValue("email"));
  }
  void signUp() {
    EasyLoading.show();
    createUser();
    if (user != null){
      FirebaseUtil.shared.registerUser(user, onSuccess: () {
        setFullName();
        EasyLoading.dismiss();
        Get.offAllNamed(AppRoutes.gender);
      }, onError: (error) {
        EasyLoading.dismiss();
        Get.dialog(
          AttentionDialog(
            description: 'Please try again!',
            cancelText: "cancel".tr,
            onCancel: () {
              Get.back();
            },
            onTap: () {
              Get.back();
            },
          ),
        );
      });
    }else{
      EasyLoading.dismiss();
    }
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
  String get name {
    switch(this){
      case Gender.boy:
        return "male";
      case Gender.girl:
        return "female";
    }
  }
}