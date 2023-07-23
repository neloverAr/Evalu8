import 'package:evalu8/app/core/values/icons.dart';
import 'package:evalu8/app/modules/following/view.dart';
import 'package:evalu8/app/modules/home/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../search/view.dart';
class MainNavigationController extends GetxController{
  int index = 0;
  late List<PageData> pages;
  setPages() {
    pages = [
      PageData(
          page: const HomePage(),
          path: home_icon),
      PageData(
          page: const SearchPage(),
          path: search_icon),
      PageData(
          page: const AllFollowingPage(),
          path: checked_icon),
    ];
  }
  changePage(int newIndex) {
    if (index == newIndex) {
      return;
    }
    index = newIndex;
    update();
  }
  @override
  void onInit() {
    super.onInit();
    setPages();
  }
}

class PageData {
  String path;
  Widget page;

  PageData(
      {
        required this.page,
        required this.path});
}