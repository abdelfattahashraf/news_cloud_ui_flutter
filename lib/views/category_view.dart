import 'package:flutter/material.dart';
import 'package:train_news/models/category_model.dart';
import 'package:train_news/widgets/article_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryName, required this.category});
  final String categoryName;
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          category.categoryName,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [ArticleBuilder(categoryName: categoryName)],
      ),
    );
  }
}
