import 'package:flutter/material.dart';
import 'package:train_news/models/article_model.dart';
import 'package:train_news/widgets/article_widget.dart';

class ArticleList extends StatelessWidget {
  const ArticleList({super.key, required this.news});
  final List<ArticleModel> news;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: news.length,
      itemBuilder: (context, i) {
        return ArticleWidget(article: news[i]);
      },
    );
  }
}
