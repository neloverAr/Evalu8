import 'package:evalu8/app/modules/product_details/widget/review_item.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar.widget.dart';
class AllReviewsPage extends StatelessWidget {
  const AllReviewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Reviews',
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ...List.generate(5, (index) => ReviewItemWidget())
                        ],
                      ),
                    )),
              )
          )),
    );
  }
}
