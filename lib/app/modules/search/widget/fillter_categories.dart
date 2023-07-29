import 'package:flutter/material.dart';

import 'FilterItem.dart';

class FiltredCategory extends StatelessWidget {
  FiltredCategory({Key? key}) : super(key: key);
  List<String> list = [
    'All',
    'KITCHEN TOOLS',
    'PHONES',
    'HOME TOOLS',
    'KOREAN FOOD',
    'CARS',
    'RESTURENTS'
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        ...List.generate(list.length, (index) => FilterItem(title: list[index],))
      ],
    );
  }
}
