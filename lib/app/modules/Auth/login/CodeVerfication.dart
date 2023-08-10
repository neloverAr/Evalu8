import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../core/values/colors.dart';
import '../../widgets/AppBackground.dart';
import '../../widgets/AppButton.dart';
import 'controller.dart';

class CodeVerficationPage extends StatelessWidget {
   CodeVerficationPage({Key? key}) : super(key: key);
  LogInController controller = Get.put(LogInController());
  Widget build(BuildContext context) {
    controller.startTimer();
    return Scaffold(body: SingleChildScrollView(
      child: Column(
        //fit: StackFit.loose,
        children: [
          AppBackground(hasIcon: true,),
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
                        height: 74,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Check Your email',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),

                            ),
                            SizedBox(
                              height: 16,
                            ),
                            PinCodeTextField(
                              key: ,
                              length: 5,
                              obscureText: false,
                              animationType: AnimationType.fade,
                              pinTheme: PinTheme(
                                selectedColor: primaryColor,
                                selectedFillColor: Colors.white,
                                inactiveFillColor: Colors.white,
                                inactiveColor: primaryColor,
                                activeColor: primaryColor,
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(5),
                                fieldHeight: 50,
                                fieldWidth: 40,
                                activeFillColor: Colors.white,
                              ),
                              animationDuration: Duration(milliseconds: 300),
                              backgroundColor: Colors.white,
                              enableActiveFill: true,
                              onCompleted: (v) {
                                controller.isDisable = false;
                                controller.update();
                              },
                              onChanged: (value) {
                                if (value){

                                }
                                print(value);
                              },
                              beforeTextPaste: (text) {
                                print("Allowing to paste $text");
                                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                return true;
                              },
                              appContext: context,
                            ),

                          ],),
                      ),
                      GetBuilder<LogInController>(builder: (controller){
                        return  Padding(
                          padding: const EdgeInsets.all(24),
                          child: AppButton(
                            isdisabled: controller.isDisable,
                            width: double.infinity,
                            fontWeight: FontWeight.w800,
                            elevation: 0,
                            fontSize: 18,
                            color: controller.isDisable ?primaryColor.withOpacity(0.5) :primaryColor,
                            borderRadius: 12,
                            isLoading: false,
                            title: "Verify",
                            onPressed: () {
                              if (controller.isDisable == false){

                              }
                            },
                          ),
                        );
                      }),

                      GetBuilder<LogInController>(builder: (controller){
                        return controller.start != 0
                            ?  Text(
                          '00:${controller.start.toString()}',
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                            : InkWell(
                          onTap: () {
                            controller.start = 59;
                            controller.isLoading = true;
                            controller.startTimer();
                            controller.update();
                          },
                          child: const Text(
                            "Request again",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        );
                      }),
                      const SizedBox(height: 10),
                    ],
                  )),
            ),
          ),),
        ],
      ),
    ),);
  }
}
