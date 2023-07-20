import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/values/icons.dart';
class AppBackground extends StatelessWidget {
  const AppBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Padding(
          padding:
          EdgeInsets.only(top: MediaQuery.of(context).padding.top + 12),
          child: SizedBox(
            width: 100,
            child: SvgPicture.asset(logo),
          ),
        ),
        SizedBox(
          height: 80,
        ),
      ],),
    );
  }
}
