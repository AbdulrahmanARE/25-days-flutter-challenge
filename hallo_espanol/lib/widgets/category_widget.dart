import 'package:flutter/material.dart';
import 'package:hallo_espanol/category_model.dart';
import 'package:hallo_espanol/screens/item_screen.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryModel category;

  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemScreen(
              items: category.items,
              title: '${category.categoryName} Screen',
            ),
          ),
        );
      },
      child: Card(
        color: category.categoryColor,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            spacing: 0,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(category.categoryImg, width: 110),
              Text(
                category.categoryName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
