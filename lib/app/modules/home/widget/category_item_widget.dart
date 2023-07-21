import 'package:evalu8/app/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({Key? key, required this.image}) : super(key: key);
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 51,
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.5),
        shape: BoxShape.circle,
      ),
      child: Center(child: SvgPicture.asset(
        image,
        fit: BoxFit.cover,
        width: 24,
        height: 24,
      ),),
    );
  }
}
