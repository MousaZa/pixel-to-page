import 'package:flutter/material.dart';
import 'package:pixel_to_page/categories.dart';
import 'package:pixel_to_page/colors.dart';
import 'package:pixel_to_page/fontstyles.dart';
import 'package:pixel_to_page/post_card.dart';
import 'package:pixel_to_page/posts.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.category, this.isFav = false});
  final AppCategory category;
  final bool isFav;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,surfaceTintColor: AppColors.white,
        title: Text(category.title, style: AppFontStyles.regular,),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // crossAxisSpacing: 8,
          // mainAxisSpacing: 8,
          childAspectRatio: 3,
        ),
        itemCount: isFav ? 3 : 20,
        itemBuilder: (context, index) {
          return PostCard(
            post: workAdsCategories[index],
          );
        },
      )
    );
  }
}
