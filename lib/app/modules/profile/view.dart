import 'package:evalu8/app/routes/pages_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../core/theme/app_text_style.dart';
import '../../core/values/colors.dart';
import '../../core/values/icons.dart';
import '../../core/values/images_path.dart';
import '../widgets/AppBackground.dart';
import '../widgets/app_bar.widget.dart';

class ViewProfilePage extends StatelessWidget {
   ViewProfilePage({Key? key}) : super(key: key);
  bool isSwipe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Profile',
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsetsDirectional.all(16),
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: primaryColor,
              ),
              padding: EdgeInsetsDirectional.all(16),
              child: Row(
                children: [
                  Image.asset(
                    avatar,
                    height: 48,
                    width: 48,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ashfak Sayem',
                          style:
                              AppTextStyles.b18.copyWith(color: Colors.white),
                        ),
                        Text('ashfaksayem@gmail.com',
                            style: AppTextStyles.b14
                                .copyWith(color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: Card(
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoutes.editProfile);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: Row(children: [ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Container(
                                  color: color0601B4.withOpacity(0.1),
                                  padding: EdgeInsetsDirectional.all(6),
                                  child: const Icon(
                                    Icons.person,
                                    color: color0601B4,
                                  ),
                                )
                            ),
                              const SizedBox(width: 12,),
                              Text('Edit Profile',  style: AppTextStyles.b14
                                  .copyWith(color: Colors.black)),

                            ],)),
                            const Icon(Icons.navigate_next,color: Colors.grey,)
                          ],
                        ),
                      ),
                      const SizedBox(height: 13,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Row(children: [ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Container(
                                color: color0601B4.withOpacity(0.1),
                                padding: EdgeInsetsDirectional.all(6),
                                child: const Icon(
                                  Icons.private_connectivity,
                                  color: color0601B4
                                ),
                              )
                          ),
                            const SizedBox(width: 12,),
                            Text('Private Account',  style: AppTextStyles.b14
                                .copyWith(color: Colors.black)),

                          ],)),
                          Switch(
                            activeTrackColor: secondaryColor,
                            activeColor: Colors.white,
                            value: false,
                            onChanged: (value) {
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
