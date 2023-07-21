import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../core/values/colors.dart';
import '../../widgets/AppBackground.dart';
import '../../widgets/AppButton.dart';

class CodeVerficationPage extends StatelessWidget {
  const CodeVerficationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppBackground(),
            Positioned(
              top: 90,
              child: Container(
                child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 74,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text(
                              'Check Your email',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            PinCodeTextField(
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
                                print("Completed");
                              },
                              onChanged: (value) {
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
                            title: "Verify",
                            onPressed: () {},
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
