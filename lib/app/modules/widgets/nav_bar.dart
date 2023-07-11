import 'dart:developer';
import 'dart:ffi';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../../core/values/colors.dart';
import '../FollowingPage.dart';
import '../HomePage.dart';
import '../SearchPage.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  // GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          // key: _bottomNavigationKey,
          index: 0,
          items: [
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            // CurvedNavigationBarItem(
            //   child: Image(
            //     image: AssetImage('images/logo.png'),
            //     color: yellow,
            //     height: 24,
            //     width: 24,
            //   ),
            //   label: 'Main',
            // ),
            // CurvedNavigationBarItem(
            //   child: Icon(
            //     Icons.search,
            //     color: yellow,
            //   ),
            //   label: 'Search',
            // ),
            // CurvedNavigationBarItem(
            //   child: Icon(
            //     Icons.check_circle,
            //     color: yellow,
            //   ),
            //   label: 'Follwing',
            // ),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: blue,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: _page == 0
            ? HomePage()
            : _page == 1
                ? SearchPage()
                : FollowingPage(),
      ),
    );
  }
}
