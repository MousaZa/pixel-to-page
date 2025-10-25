import 'package:flutter/material.dart';
import 'package:pixel_to_page/category_page.dart';
import 'package:pixel_to_page/colors.dart';

import 'categories.dart';

class CategoryCard extends StatelessWidget {
  final AppCategory category;
  CategoryCard({super.key, required this.category});

  final List<MaterialColor> randomColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.teal,
    Colors.amber,
    Colors.cyan,
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryPage(category: category)));
      },
      child: Container(
        padding: EdgeInsets.all(18),
        margin: EdgeInsets.all(12),
        width: 200,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              category.icon,
              size: 64,
              color: randomColors[category.title.hashCode % randomColors.length]
            ),
            SizedBox(height: 16),
            Text(
              category.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              category.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
