import 'package:evalu8/app/core/theme/app_text_style.dart';
import 'package:evalu8/app/core/values/colors.dart';
import 'package:evalu8/app/core/values/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppDrawerItem extends StatelessWidget {
  AppDrawerItem({Key? key, required this.icon, required this.title})
      : super(key: key);
  String icon;
  String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        padding: EdgeInsetsDirectional.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: SvgPicture.asset(icon),
            ),
            Expanded(
                child: Text(
              title,
              style: AppTextStyles.b14.copyWith(color: color535763),
              textAlign: TextAlign.start,
              maxLines: 2,
            )),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }

}
