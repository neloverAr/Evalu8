import 'package:evalu8/app/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class Rating_result extends StatelessWidget {
  const Rating_result({super.key});

  @override
  Widget build(BuildContext context) {
    return SmoothStarRating(
        starCount: 5,
        rating: 4.5,
        size: 20.0,
        filledIconData: Icons.star,
        halfFilledIconData: Icons.star,
        color: primaryColor,
        borderColor: primaryColor,
        spacing: 3.0);
  }
}
