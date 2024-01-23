import 'package:flutter/material.dart';
import 'package:train_news/models/category_model.dart';
import 'package:train_news/views/category_view.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(categoryName: category.categoryName,category: category);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Container(
          height: 140,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(
                  // 'assets/test.jpg',
                  category.categoryImage),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              // 'Category Name',
              category.categoryName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
