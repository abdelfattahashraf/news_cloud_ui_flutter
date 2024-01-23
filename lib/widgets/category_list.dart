import 'package:flutter/material.dart';
import 'package:train_news/models/category_model.dart';
import 'package:train_news/widgets/category_widget.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(categoryImage: 'assets/technology.jpeg', categoryName: 'Technology'),
    CategoryModel(categoryImage: 'assets/entertainment.jpg', categoryName: 'Entertainment'),
    CategoryModel(categoryImage: 'assets/business.jpg', categoryName: 'Business'),
    CategoryModel(categoryImage: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(categoryImage: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(categoryImage: 'assets/general.jpg', categoryName: 'General')
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: categories.length,
        itemBuilder: (context, i) {
          return CategoryWidget(
            category: categories[i],
          );
        },
      ),
    );
  }
}
