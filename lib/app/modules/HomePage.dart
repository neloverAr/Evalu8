import 'dart:ui';

import 'package:evalu8/app/modules/widgets/Body.dart';
import 'package:evalu8/app/modules/widgets/appbar.dart';
import 'package:evalu8/app/modules/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

import '../core/values/colors.dart';
import 'FollowingPage.dart';
import 'SearchPage.dart';
import 'widgets/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController = ScrollController();
  bool isScrolledDown = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    setState(() {
      if (_scrollController.offset > 0) {
        isScrolledDown = true;
      } else {
        isScrolledDown = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: MainAppBar(
        user: "Reema",
        is_scroll: isScrolledDown,
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        controller: _scrollController,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.0),
          child: Body(),
        ),
      ),
    );
  }
}
