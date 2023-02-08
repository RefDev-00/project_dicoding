import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:news_app_dicoding/model/article_model.dart';
import 'package:news_app_dicoding/pages/detail_page.dart';

class NewsListPage extends StatelessWidget {
  static String routeName = '/article_list';
  const NewsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: FutureBuilder<String>(
        future:
            DefaultAssetBundle.of(context).loadString('assets/articles.json'),
        builder: (context, snapshot) {
          final List<Article> articles = parseArticles(snapshot.data);
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return _buildArticleItem(context, articles[index]);
            },
          );
        },
      ),
    );
  }
}

// Mengkonversi sebuah objek menjadi String
List<Article> parseArticles(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json);
  return parsed.map((json) => Article.fromJson(json)).toList();
}

// Membuat method baru
Widget _buildArticleItem(BuildContext context, Article article) {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    leading: Image.network(
      article.urlToImage!,
      width: 100,
    ),
    title: Text(article.title!),
    subtitle: Text(article.auhtor!),
    onTap: () {
      Navigator.pushNamed(context, ArticleDetailPage.routName,
          arguments: article);
    },
  );
}
