import 'package:evalu8/app/modules/widgets/appbar_content.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String user;
  final bool is_scroll;

  const MainAppBar({super.key, required this.user, required this.is_scroll});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 40.0);
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        child: is_scroll
            ? AppBarContent(
                user_name: user,
                shouldhidden: is_scroll,
              )
            : ClipPath(
                clipper: WaveClip(),
                child: AppBarContent(
                  user_name: user,
                  shouldhidden: is_scroll,
                ),
              ),
        preferredSize: Size.fromHeight(kToolbarHeight + 100));
  }
}

class WaveClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    final lowPoint = size.height - 10;
    final highPoint = size.height - 30;
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width / 4, highPoint, size.width / 2, lowPoint);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, lowPoint);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
