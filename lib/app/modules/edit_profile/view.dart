import 'package:evalu8/app/core/values/colors.dart';
import 'package:evalu8/app/routes/pages_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/theme/app_text_style.dart';
import '../../core/values/images_path.dart';
import '../Auth/widgets/custom_textfield.dart';
import '../dateOfBirthday/controller.dart';
import '../widgets/AppButton.dart';
import '../widgets/app_bar.widget.dart';

class EditProfilePage extends StatelessWidget {
  EditProfilePage({Key? key}) : super(key: key);
  final DateOfBirthdayController controller =
      Get.put(DateOfBirthdayController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:   Padding(
        padding: const EdgeInsets.all(24),
        child: AppButton(
          width: double.infinity,
          fontWeight: FontWeight.w800,
          elevation: 0,
          fontSize: 18,
          color: primaryColor,
          borderRadius: 12,
          isLoading: false,
          title: "Update Profile",
          onPressed: () {

          },
        ),
      ),
        appBar: AppBarWidget(
          title: 'Edit Profile',
        ),
        body: SafeArea(
            child: ListView(padding: EdgeInsetsDirectional.all(16), children: [
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  padding: EdgeInsetsDirectional.all(8),
                  child: Image.asset(
                    avatar,
                    height: 48,
                    width: 48,
                  ),
                  color: primaryColor.withOpacity(0.5),
                ),
              ),
              InkWell(
                child: Text('Edit Profile Picture',
                    style: AppTextStyles.r12.copyWith(color: color0B99FF)),
                onTap: () {},
              ),
              Text(
                'Ashfak Sayem',
                style: AppTextStyles.b18.copyWith(color: Colors.black),
              ),
              Text('ashfaksayem@gmail.com',
                  style: AppTextStyles.b14.copyWith(color: Colors.grey)),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          CustomTextField(type:TextFieldEnum.firstName,isShowTitle: false,label: "Ashfak",),
          SizedBox(
            height: 5,
          ),
          CustomTextField(type:TextFieldEnum.lastName,isShowTitle: false,label: "Sayem",),
          SizedBox(
            height: 5,
          ),
          GetBuilder<DateOfBirthdayController>(builder: (_) {
            return Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.symmetric(horizontal: 16),
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: EEEEEEColor, // red as border color
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: TextField(
                  controller: controller.dateinput,
                  //editing controller of this TextField
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    icon: Icon(Icons.calendar_today),
                    //icon of text field
                    hintText: "Enter Date", //label text of field
                  ),
                  readOnly: true,
                  //set it true, so that user will not able to edit text
                  onTap: () async {
                    controller.openCalender();
                  },
                )));
          }),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsetsDirectional.symmetric(horizontal: 16),
            padding: EdgeInsetsDirectional.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: EEEEEEColor, width: 1),
            ),
            child: Text('Select your gender'),
          ),
          SizedBox(
            height: 15,
          ),

          GestureDetector(
            onTap: (){
              Get.toNamed(AppRoutes.editPassword);
            },
            child: Container(
              margin: EdgeInsetsDirectional.symmetric(horizontal: 16),
              padding: EdgeInsetsDirectional.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: EEEEEEColor, width: 1),
              ),
              child: Text('Edit Password'),
            ),
          ),

        ])));
  }
}
