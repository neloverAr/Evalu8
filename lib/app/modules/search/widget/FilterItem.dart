import 'package:evalu8/app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

import '../../../core/values/colors.dart';

class FilterItem extends StatelessWidget {
  FilterItem({Key? key, required this.title}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
              color: colorF0F0F0
        ),
        // padding: EdgeInsetsDirectional.symmetric(horizontal: 8,),
        child: Text(title,style: AppTextStyles.b12.copyWith(color: secondaryColor),textAlign: TextAlign.center,),
      ),
    );
  }
}
