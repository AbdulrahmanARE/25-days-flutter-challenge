import 'dart:ui';

import '../category_model.dart';
import 'animals.dart';
import 'colors.dart';
import 'family.dart';
import 'numbers.dart';

final List<CategoryModel> categories = [
  CategoryModel(
    categoryImg: 'assets/app_logo/Animals.png',
    categoryName: 'Animals',
    items: animals,
    categoryColor: Color(0xFFFFCC80),
  ),
  CategoryModel(
    categoryImg: 'assets/app_logo/color.png',
    categoryName: 'Colors',
    items: colors,
    categoryColor: Color(0xFF80CBC4),
  ),
  CategoryModel(
    categoryImg: 'assets/app_logo/family.png',
    categoryName: 'Family',
    items: family,
    categoryColor: Color(0xFF90CAF9),
  ),
  CategoryModel(
    categoryImg: 'assets/app_logo/numbers.png',
    categoryName: 'Numbers',
    items: numbers,
    categoryColor: Color(0xFFA5D6A7),
  ),
];