import 'package:evalu8/app/modules/search/widget/FilterItem.dart';
import 'package:evalu8/app/modules/search/widget/custom_search.dart';
import 'package:evalu8/app/modules/search/widget/fillter_categories.dart';
import 'package:flutter/material.dart';
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(16),
      child: Column(children: [
        CustomSearchText(),
        SizedBox(height: 13,),
        Expanded(child: FiltredCategory())
      ],),
    );
  }
}
