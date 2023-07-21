import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/values/icons.dart';
class CustomAppBar extends StatelessWidget  implements PreferredSizeWidget  {
  const CustomAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(bottom: 8,left: 24,right: 24),
        color: Colors.transparent,
        child: Row(
          children: [
            Icon(Icons.menu),
            Spacer(),
            SvgPicture.asset(
              logo,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(40);
}
