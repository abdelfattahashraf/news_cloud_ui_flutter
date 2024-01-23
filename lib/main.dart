import 'package:flutter/material.dart';
import 'package:train_news/views/home_view.dart';

void main() {
  runApp(const CloudNews());
}

class CloudNews extends StatelessWidget {
  const CloudNews({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
