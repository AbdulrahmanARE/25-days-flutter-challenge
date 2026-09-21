import 'package:flutter/cupertino.dart';

import 'Item_model.dart';

class CategoryModel {
  final String categoryImg;
  final String categoryName;
  final List<ItemModel> items;
  final Color categoryColor;

  CategoryModel({
    required this.categoryImg,
    required this.categoryName,
    required this.items, required this.categoryColor,
  });
}
