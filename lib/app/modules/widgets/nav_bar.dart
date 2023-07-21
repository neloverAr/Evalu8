import 'dart:ui';

import 'package:evalu8/app/modules/HomePage.dart';
import 'package:evalu8/app/modules/SearchPage.dart';
import 'package:flutter/material.dart';

import '../../core/values/colors.dart';
import '../FollowingPage.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;

    final List<Widget> _tabs = [
      // HomePage(),
      SearchPage(),
      FollowingPage(),
    ];
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRect(
              child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 1.0,
                    sigmaY: 1.0,
                  ),
                  child: Container(
                      width: double.maxFinite,
                      height: displayWidth * .180,
                      color: Colors.black.withOpacity(0)))),
          bottomWidget(),
        ],
      ),
    );
  }

  Widget bottomWidget() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0, left: 15, right: 15.0),
      child: BottomNavigationBar(
        fixedColor: secondaryColor,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? Image.asset(
                    'assets/images/logo.png',
                    width: 24,
                    height: 24,
                  )
                : Image.asset(
                    'assets/images/greylogo.png',
                    width: 24,
                    height: 24,
                  ),
            label: 'Main',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.check_circle,
            ),
            label: 'Following',
          ),
        ],
      ),
    );
  }
}
