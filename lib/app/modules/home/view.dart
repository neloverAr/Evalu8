import 'package:evalu8/app/core/theme/app_text_style.dart';
import 'package:evalu8/app/core/values/colors.dart';
import 'package:evalu8/app/core/values/images_path.dart';
import 'package:evalu8/app/modules/home/widget/category.dart';
import 'package:evalu8/app/modules/home/widget/custom_app_bar_widget.dart';
import 'package:evalu8/app/modules/home/widget/hint_with_icon_widget.dart';
import 'package:evalu8/app/modules/home/widget/product_section_widget.dart';
import 'package:evalu8/app/modules/home/widget/recent_activity_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/values/icons.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    primaryColor,
                    Colors.white,
                  ],
                  begin: FractionalOffset(2, 1.5),
                  end: FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 24, left: 24, top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(text: 'Hi Nooniaz', style: AppTextStyles.r20),
                        const TextSpan(text: '👋'),
                      ])),
                  _buildHeader(),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Explore by Category ',style: AppTextStyles.r18Black,)
                  ,const SizedBox(
                    height: 10,
                  ),
                  Category(),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Recent Activity ',style: AppTextStyles.r18Black,)
                  ,const SizedBox(
                    height: 10,
                  ),
                  RecentActivityWidget(),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('New ',style: AppTextStyles.r18Black,)
                  ,const SizedBox(
                    height: 10,
                  ),
                  ProductsWidget(),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Top Rated',style: AppTextStyles.r18Black,)
                  ,const SizedBox(
                    height: 10,
                  ),
                  ProductsWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Row(
      children: [
        Icon(Icons.menu),
        Spacer(),
        SvgPicture.asset(
          logo,
        ),
        Spacer(),
      ],
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Image.asset(slider),
        SizedBox(
          height: 10,
        ),
        Row(
          children: List.generate(Hint.generateListOfHint().length, (index) {
            return HintWithIconWidget(
              object: Hint.generateListOfHint()[index],
            );
          }),
        )
      ],
    );
  }
}
