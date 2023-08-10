import 'package:evalu8/app/core/values/colors.dart';
import 'package:evalu8/app/modules/product_analysis/widget/charts.dart';
import 'package:flutter/material.dart';

import '../../core/theme/app_text_style.dart';
import '../search/widget/FilterItem.dart';
import '../widgets/app_bar.widget.dart';
class ProductAnalysisPage extends StatelessWidget {
   ProductAnalysisPage({Key? key}) : super(key: key);
  List<String> list = [
    'All',
    'KITCHEN TOOLS',
    'PHONES',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Pan',
      ),
      body:
        SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        elevation: 6,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Pan',
                                style: AppTextStyles.r16Black,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'KITCHEN TOOLS',
                                style: AppTextStyles.r10Black,
                              ),
                            ],
                          ),
                        )),
                    Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        elevation: 6,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Text(
                                    'Primary Text',
                                    style: AppTextStyles.r16Black,
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Secondary text',
                                    style: AppTextStyles.r10Black,
                                  )
                                ],),
                                Icon(Icons.info,size: 20,color: color707070,)
                              ],),
                              Divider(),
                              SizedBox(
                                  width: double.infinity,
                                  height:400,
                                  child: ChartsWidget())
                            ],
                          ),
                        )),
                    Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        elevation: 6,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Most common words about product',
                                style: AppTextStyles.r16Black,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                ...List.generate(3, (index) => Expanded(child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                  child: FilterItem(title: list[index],),
                                )))
                              ],)
                            ],
                          ),
                        )),
                    Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        elevation: 6,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Visitors',
                                style: AppTextStyles.r16Black,
                              ),
                             Spacer(),
                              Text(
                                '30',
                                style: AppTextStyles.r10Black,
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              )
          )),
    );
  }
}
