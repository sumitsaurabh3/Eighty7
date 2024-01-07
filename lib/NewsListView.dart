import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'handleTap.dart';
class NewsListView extends StatelessWidget {
  final List<dynamic> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length ?? 0,
      itemBuilder: (context, index) {
        final article = articles[index];

        final title = article?['title'] ?? 'No Title';
        final description = article?['description'] ?? 'No Description';
        return Card(
          color: Colors.white10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: AutoSizeText(
                title,
                style:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                maxLines: 2,
                minFontSize: 18,
                maxFontSize: 18,
              ),
              subtitle: AutoSizeText(
                description,
                maxLines: 6,
                style: const TextStyle(
                  fontSize: 14,
                ),
                minFontSize: 14,
                maxFontSize: 14,
              ),
              onTap: () {
                handleTap(context, article);
              },
            ),
          ),
        );
      },
    );
  }
}