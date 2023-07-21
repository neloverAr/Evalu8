import 'package:evalu8/app/core/theme/themes.dart';
import 'package:evalu8/app/core/values/colors.dart';
import 'package:evalu8/app/core/values/icons.dart';
import 'package:evalu8/app/modules/on_boarding_screen/widget/on_boarding.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../data/models/onBoarding.dart';
import 'controller.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({Key? key}) : super(key: key);
  final _list = OnBoardingModel.generateListOfOnBoarding();
  OnBoardingController controller = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsetsDirectional.only(top: 12, bottom: 29),
          child: Column(
            children: [
              SizedBox(
                width: 100,
                child: SvgPicture.asset(logo),
              ),
              Expanded(
                  flex: 3,
                  child: PageView.builder(
                    controller: controller.pageViewController,
                    itemCount: _list.length,
                      onPageChanged: (int index){
                      controller.changeCurrentIndex(index);
                      },
                      itemBuilder: (context,i){
                    return OnBoardingWidget(object: _list[i],);
                  })
              ),
              GetX<OnBoardingController>(builder: (controller){
                return Row(
                  mainAxisAlignment: MainAxisAlignment .center,
                  children: [
                    ...List.generate(_list.length,(index)=> AnimatedContainer(
                        duration: const Duration(milliseconds:300),
                        margin: const EdgeInsets.only(right: 5),
                        width: index==controller.currentIndex.value?32:12,
                        height: 5,
                        decoration: BoxDecoration (
                            color: index==controller.currentIndex.value?secondaryColor:Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular (10))
                    )

                    )
                  ],
                );
              }),
              const SizedBox(
                height: 35,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    controller.goToStart();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Start',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          fontFamily: AppThemes.getBoldFontFamily()),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
