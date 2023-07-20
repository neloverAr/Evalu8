import 'package:evalu8/app/core/values/icons.dart';

class OnBoardingModel {
  String sub_title_One;
  String sub_title_Two;
  String description;
  String image;
  OnBoardingModel(
      this.sub_title_One, this.sub_title_Two, this.description, this.image);
  static List<OnBoardingModel> generateListOfOnBoarding() {
    return [
      OnBoardingModel('Check ', 'The Trends',
          'Browse top products of specific\n categories', first_on_boarding),
      OnBoardingModel('People  ', 'Experience',
          'See what people say about the\n products', second_on_boarding),
      OnBoardingModel(
          '',
          'Evaluate',
          'Evaluate products according to your\n own experience',
          third_on_boarding)
    ];
  }
}
