import 'package:evalu8/app/modules/Auth/signup/controller.dart';
import 'package:evalu8/app/modules/dateOfBirthday/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../core/theme/app_text_style.dart';
import '../../core/values/colors.dart';
import '../../routes/pages_routes.dart';
import '../Auth/widgets/custom_textfield.dart';
import '../widgets/AppBackground.dart';
import '../widgets/AppButton.dart';
class DateOfBirthdayPage extends StatelessWidget {
   DateOfBirthdayPage({Key? key}) : super(key: key);
   SignUpController controller = Get.find<SignUpController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
      child: Column(
        //fit: StackFit.loose,
        children: [
          AppBackground(hasIcon: false,hasSkipFeature: true,onSkipTap: (){
            controller.setDateOfBirthday();
          },),
          Center(child: Padding(
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
                        height: 50,
                      ),
                      Text('What’s your Date of Birth',style: AppTextStyles.b18,),
                      GetBuilder<SignUpController>(builder: (_) {
                        return  Container(
                            padding: EdgeInsets.all(15),
                            margin: EdgeInsets.all(15),
                            height:60,
                            decoration: BoxDecoration(border: Border.all(
                              color: EEEEEEColor,  // red as border color
                            ),
                            borderRadius: BorderRadius.circular(10)),
                            child:Center(
                                child:TextField(
                                  controller: controller.dateinput, //editing controller of this TextField
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      icon: Icon(Icons.calendar_today), //icon of text field
                                      hintText: "Enter Date" , //label text of field
                                  ),
                                  readOnly: true,  //set it true, so that user will not able to edit text
                                  onTap: () async {
                                    controller.openCalender();
                                  },
                                )
                            )
                        );
                      }),
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
                          title: "Next",
                          onPressed: () {
                            controller.setDateOfBirthday();

                          },
                        ),
                      ),
                    ],
                  )),
            ),
          ),),
        ],
      ),
    ),);
  }

}
