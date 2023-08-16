import 'package:evalu8/app/modules/following/widget/all_following_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'controller.dart';

class AllFollowingPage extends StatelessWidget {
  AllFollowingPage({Key? key}) : super(key: key);
  FollowingController controller  = Get.put(FollowingController(),permanent: true);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FollowingController>(builder: (_) {
      return ListView.separated(
        padding: EdgeInsetsDirectional.all(24),
        itemCount: 6,
        separatorBuilder: (BuildContext context, int index) => SizedBox(height: 10,),
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(index.toString()),
            background: Container(
              color: Colors.red,
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
              child: Icon(Icons.delete,
                color: Colors.white,
              ),
            ),
            direction: DismissDirection.horizontal,
            onDismissed: (direction) {
            },
            child: FollowItem(index: index,),
          );
         // return FollowItem(index: index,);
        },
      );
    });
  }
}
