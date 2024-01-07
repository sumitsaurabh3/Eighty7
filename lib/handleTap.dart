import 'package:flutter/material.dart';
import 'ArticleDetailScreen.dart';
void handleTap(BuildContext context, dynamic article) {
  final selectedTitle = article?['title'] ?? 'No Title';
  print('Selected Article: $selectedTitle');
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ArticleDetailScreen(article: article),
    ),
  );
}
