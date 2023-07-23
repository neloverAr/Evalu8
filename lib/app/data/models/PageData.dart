import 'package:flutter/cupertino.dart';

class PageData {
  String path;
  Widget page;

  PageData(
      {
        required this.page,
        required this.path});
}