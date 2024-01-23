import 'package:flutter/material.dart';
import 'package:train_news/models/article_model.dart';
import 'package:train_news/views/article_view.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({super.key, required this.article});
  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ArticleView(article: article);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                // 'https://i.pinimg.com/564x/66/c2/10/66c2105c4fd5396286b36251913efe87.jpg',
                article.articleImage ?? 'https://i.pinimg.com/564x/66/c2/10/66c2105c4fd5396286b36251913efe87.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Text(
              // 'LoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLorem',
              article.articleTitle,
              maxLines: 1,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.clip,
              ),
            ),
            Text(
              // 'LoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLorermLoremLorem',
              article.articleDescription ?? 'N/A',
              maxLines: 2,
              style: const TextStyle(
                fontSize: 15,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
