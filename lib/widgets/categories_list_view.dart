import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> category = const [
    CategoryModel(
      categoryName: 'business',
      image: 'assets/business.jpg',
    ),
    CategoryModel(
      categoryName: 'entertainment',
      image: 'assets/entertainment.avif',
    ),
    CategoryModel(
      categoryName: 'science',
      image: 'assets/science.avif',
    ),
    CategoryModel(
      categoryName: 'health',
      image: 'assets/health.avif',
    ),
    CategoryModel(
      categoryName: 'sports',
      image: 'assets/sports.jpg',
    ),
    CategoryModel(
      categoryName: 'technology',
      image: 'assets/technology.jpeg',
    ),
    CategoryModel(
      categoryName: 'world',
      image: 'assets/general.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) {
            return CategoryCard(category: category[index]);
          }),
    );
  }
}
