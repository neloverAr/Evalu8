import 'package:evalu8/app/core/theme/themes.dart';
import 'package:evalu8/app/core/values/colors.dart';
import 'package:evalu8/app/core/values/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/models/onBoarding.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({Key? key,required this.object}) : super(key: key);
  final  OnBoardingModel object;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(165),
              child: Container(
                height: 330,
                width: 330,
                color: background,
                child: Container(
                  padding: EdgeInsets.all(30),
                  child: SvgPicture.asset(
                    object.image,
                    fit: BoxFit.contain,
                  ),
                ),
              )),
          SizedBox(height: 52,),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: object.sub_title_One,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: primaryColor,
                      fontFamily: AppThemes.getBoldFontFamily())),
              TextSpan(
                  text: object.sub_title_Two,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: secondaryColor,
                      fontFamily: AppThemes.getBoldFontFamily())),
            ]),
          ),
          SizedBox(height: 8,),
          Text(
            object.description,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: greyColor,
                fontFamily: AppThemes.getRegularFontFamily()),
          )
        ],
      ),
    );
  }
}
