import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
import 'package:train_news/models/article_model.dart';

class NewsService {
  Future<List<ArticleModel>> getArticle({required String category}) async {
    try {
      final dio = Dio();
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=6cf2196277a94785aaa22c08e3736631&country=us&category=$category');
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> news = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        //  ArticleModel(
        //   articleImage: article['urlToImage'],
        //   articleTitle: article['title'],
        //   articleDescription: article['description'],
        // );
        news.add(articleModel);
      }
      return news;
    } catch (e) {
      // TODO
      return [];
    }
  }
}
