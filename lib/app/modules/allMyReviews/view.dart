import 'package:evalu8/app/modules/allMyReviews/widget/MyReviewItem.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar.widget.dart';
class AllMyReviews extends StatelessWidget {
  const AllMyReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'All My Reviews',
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    ...List.generate(5, (index) => MyReviewItem())
                  ],
                ),
              )
          )),
    );
  }
}
