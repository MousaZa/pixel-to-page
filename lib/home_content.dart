import 'package:flutter/material.dart';
import 'package:pixel_to_page/category_card.dart';
import 'package:pixel_to_page/colors.dart';
import 'package:pixel_to_page/fontstyles.dart';

import 'categories.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "kategoriler",
          style: AppFontStyles.bold.copyWith(
            fontSize: 32,
            color: AppColors.black,
          ),
        ),
        GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),shrinkWrap: true, itemBuilder: (context, index) {
          final category = appCategories[index];
          return CategoryCard(category: category);
        }, itemCount: appCategories.length, padding: EdgeInsets.all(16),),
      ],
    );
  }
}
