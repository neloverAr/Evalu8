import 'package:evalu8/app/core/values/icons.dart';
import 'package:evalu8/app/modules/home/widget/category_item_widget.dart';
import 'package:flutter/material.dart';
class Category extends StatelessWidget {
  Category({Key? key}) : super(key: key);
  List<String> listOfImages = [
    book,
    baker,
    car,
    tree,
    book,
    baker,
    car,
    tree,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
        return CategoryItem(image: listOfImages[index]);
      }, separatorBuilder: (_,i)=> SizedBox(width: 16,), itemCount: listOfImages.length),
    );
  }
}
