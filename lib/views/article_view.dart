import 'package:flutter/material.dart';
import 'package:train_news/models/article_model.dart';

class ArticleView extends StatelessWidget {
  const ArticleView({super.key, required this.article});
  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Text(
              // 'LoremLoremLoremLoremLoremLoremLorem LoremLoremLoremLoremLorem LoremLoremLoremLorem',
              article.articleTitle,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                // 'https://i.pinimg.com/564x/55/47/66/554766076d905193e87980b373f6f2ef.jpg',
                article.articleImage ?? 'https://i.pinimg.com/564x/66/c2/10/66c2105c4fd5396286b36251913efe87.jpg',
              ),
            ),
            const SizedBox(height: 5),
            Text(
              // 'Lorem lorem loremlorem loremlorem loremloremddff loremlorem loremlorem loremlorem',
              article.articleDescription ?? 'N/A',
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(article.articleAuthor ?? 'N/A'),
                const SizedBox(width: 50),
                Text(article.articleSource ?? 'N/A'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
