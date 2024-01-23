class ArticleModel {
  final String? articleImage;
  final String articleTitle;
  final String? articleDescription;
  final String? articleSource;
  final String? articleAuthor;

  ArticleModel(
      {required this.articleImage,
      required this.articleTitle,
      required this.articleDescription,
      required this.articleSource,
      required this.articleAuthor});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      articleImage: json['urlToImage'],
      articleTitle: json['title'],
      articleDescription: json['description'],
      articleSource: json['source']['name'],
      articleAuthor: json['author'],
    );
  }
}
