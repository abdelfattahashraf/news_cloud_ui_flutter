import 'package:flutter/material.dart';
import 'package:train_news/models/article_model.dart';
// import 'package:train_news/models/category_model.dart';
import 'package:train_news/services/news_service.dart';
import 'package:train_news/widgets/article_list.dart';
// import 'package:train_news/widgets/article_widget.dart';

class ArticleBuilder extends StatefulWidget {
  const ArticleBuilder({super.key, required this.categoryName});
  final String categoryName;
  @override
  State<ArticleBuilder> createState() => _ArticleBuilderState();
}

class _ArticleBuilderState extends State<ArticleBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService().getArticle(category: widget.categoryName);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ArticleList(news: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(
                child: Text('ops there was an error!!'),
              ),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.amber,
                ),
              ),
            );
          }
        });
  }
}
