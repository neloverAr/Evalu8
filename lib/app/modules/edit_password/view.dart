import 'package:flutter/material.dart';

import '../../core/values/colors.dart';
import '../Auth/widgets/custom_textfield.dart';
import '../widgets/AppButton.dart';
import '../widgets/app_bar.widget.dart';
class EditPasswordPage extends StatelessWidget {
  const EditPasswordPage({Key? key}) : super(key: key);

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
            title: "Update Password",
            onPressed: () {

            },
          ),
        ),
        appBar: AppBarWidget(
          title: 'Edit Password',
        ),
        body: SafeArea(
            child: ListView(padding: EdgeInsetsDirectional.all(16), children: [
              SizedBox(
                height: 10,
              ),
              CustomTextField(type:TextFieldEnum.currentPassword,isShowTitle: false,label: "Current Password",),
              SizedBox(
                height: 5,
              ),
              CustomTextField(type:TextFieldEnum.newPassword,isShowTitle: false,label: "New Password",),
              SizedBox(
                height: 5,
              ),
              CustomTextField(type:TextFieldEnum.confirmNewPassword,isShowTitle: false,label: "Confirm New Password",),

            ])));
  }
}
