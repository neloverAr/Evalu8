import 'dart:async';

import 'package:evalu8/app/core/values/icons.dart';
import 'package:evalu8/app/data/services/storage/services.dart';
import 'package:evalu8/app/modules/login/login.dart';
import 'package:evalu8/app/modules/on_boarding_screen/OnBoarding.page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class SplachPage extends StatelessWidget {
  const SplachPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => LoginPage())));
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(logo_With_background),fit: BoxFit.cover)
        ),
      ),
    );
  }
}
