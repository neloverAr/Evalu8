import 'package:evalu8/app/core/theme/themes.dart';
import 'package:evalu8/app/core/values/colors.dart';
import 'package:evalu8/app/core/values/icons.dart';
import 'package:evalu8/app/data/services/storage/services.dart';
import 'package:evalu8/app/modules/on_boarding_screen/widget/on_boarding.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../data/models/onBoarding.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({Key? key}) : super(key: key);
  final _list = OnBoardingModel.generateListOfOnBoarding();
  final controller = PageController(keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    controller: controller,
                    itemCount: _list.length,
                      itemBuilder: (context,i){
                    return OnBoardingWidget(object: _list[i],);
                  })
              ),
              SmoothPageIndicator(
                count: _list.length,
                effect: const WormEffect(
                  activeDotColor: primaryColor,
                  spacing: 7,
                  dotColor: dotColor,
                  dotHeight: 5,
                  dotWidth: 32,
                  type: WormType.thinUnderground,
                ), controller: controller,
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: secondaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    StorageService().write('isBoardingPass', true);
                    Get.offNamed('/LoginPage');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Start',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 24,fontFamily: AppThemes.getBoldFontFamily()),
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
