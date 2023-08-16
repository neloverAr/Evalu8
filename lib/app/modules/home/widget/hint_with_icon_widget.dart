import 'package:evalu8/app/core/theme/app_text_style.dart';
import 'package:evalu8/app/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/values/icons.dart';

class HintWithIconWidget extends StatelessWidget {
  HintWithIconWidget({Key? key, required this.object}) : super(key: key);
  Hint? object;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4),
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      decoration: BoxDecoration(
          color: object?.index == 0 ? primaryColor : secondaryColor,
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SvgPicture.asset(object?.image ?? section_one_comment,fit: BoxFit.cover,),
          ),
          Text(object?.title ?? "",textAlign: TextAlign.justify,style: object?.index == 0 ?  AppTextStyles.r10Black : AppTextStyles.r10White,)
        ],
      ),
    );
  }
}

class Hint {
  String? title;
  String? image;
  int? index;

  Hint(this.title, this.image, this.index);

  static List<Hint> generateListOfHint() {
    return [
      Hint('Evaluate Products \naccording to your \nown experience',
          section_one_comment, 0),
      Hint('Browse top products\naccording to our\nalgorithm',
          section_one_click, 1),
    ];
  }
}
