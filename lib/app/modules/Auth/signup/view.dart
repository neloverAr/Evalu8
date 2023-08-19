import 'package:evalu8/app/data/services/firebase/firebase_util.dart';
import 'package:evalu8/app/modules/Auth/signup/model/user.dart';
import 'package:evalu8/app/modules/widgets/AppBackground.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import '../../../core/utils/extensions.dart';
import '../../../core/values/colors.dart';
import '../../../routes/pages_routes.dart';
import '../../widgets/AppButton.dart';
import '../widgets/custom_textfield.dart';
import 'controller.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  SignUpController controller = Get.put(SignUpController(),permanent: true);
  InputDecoration inputDecoration = InputDecoration(
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
      ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            //fit: StackFit.loose,
            children: [
              AppBackground(
                hasIcon: true,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Container(
                    child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 60,
                            ),
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 24),
                              child: FormBuilder(
                                key: controller.key,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    Text(
                                      TextFieldEnum.fullName.title,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18),
                                    ),
                                    SizedBox(height: 16,),
                                    FormBuilderTextField(
                                      style: const TextStyle(
                                  color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18),
                                      autovalidateMode: AutovalidateMode.onUserInteraction,
                                      name: "fullName",
                                      keyboardType: TextInputType.text,
                                      validator: (value){
                                        if (value?.isEmpty ?? false || value == "" || value == null || value == " "){
                                          return "this field is required";
                                        }
                                        return null;
                                      },
                                      decoration:  inputDecoration,
                                    ),
                                      SizedBox(height: 16,),
                                      Text(
                                        TextFieldEnum.email.title,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ),
                                      SizedBox(height: 16,),
                                      FormBuilderTextField(
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                        autovalidateMode: AutovalidateMode.onUserInteraction,
                                        name: "email",
                                        keyboardType: TextInputType.emailAddress,
                                        validator: (value){
                                          return ValidatorUtils.validateEmail(value ?? "");
                                        },
                                        decoration:  inputDecoration,
                                      ),
                                      SizedBox(height: 16,),
                                      Text(
                                        TextFieldEnum.password.title,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ),
                                      SizedBox(height: 16,),
                                      FormBuilderTextField(
                                        obscureText: true,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                        autovalidateMode: AutovalidateMode.onUserInteraction,
                                        name: "password",
                                        keyboardType: TextInputType.text,
                                        validator: (value){
                                          return ValidatorUtils.validatePassword(value ?? "");
                                        },
                                        decoration:  inputDecoration,
                                      ),
                                      SizedBox(height: 16,),
                                      Text(
                                        TextFieldEnum.confirmPassword.title,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ),
                                      SizedBox(height: 16,),
                                      FormBuilderTextField(
                                        obscureText: true,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                        autovalidateMode: AutovalidateMode.onUserInteraction,
                                        name: "confirmPassword",
                                        keyboardType: TextInputType.text,
                                        validator: (value){
                                          return ValidatorUtils.validatePassword(value ?? "");
                                        },
                                        decoration:  inputDecoration,
                                      ),
                              ],)),
                            ),
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
                                onPressed: () {
                                  if (controller.key.currentState?.saveAndValidate() == true) {
                                    controller.signUp();
                                  }
                                },
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),

    );
  }
}
