import 'package:evalu8/app/modules/home/widget/product_item_widget.dart';
import 'package:flutter/material.dart';
class ProductsWidget extends StatelessWidget {
  const ProductsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return ProductItem();
          }, separatorBuilder: (_,i)=> SizedBox(width: 10,), itemCount: 10),
    );
  }
}
