import 'package:flutter/material.dart';
import 'package:news_app_dicoding/model/article_model.dart';
import 'package:news_app_dicoding/pages/web_view.dart';

class ArticleDetailPage extends StatelessWidget {
  static String routName = '/article_detail';

  final Article article;

  const ArticleDetailPage({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title!),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(article.urlToImage!),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(article.description!),
                  Divider(
                    color: Colors.grey,
                  ),
                  Text(
                    article.title!,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Text('Date : ${article.publishedAt}'),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Author : ${article.auhtor}'),
                  Divider(
                    color: Colors.grey,
                  ),
                  Text(
                    article.content!,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ArticleWebView.routeName,
                          arguments: article.url);
                    },
                    child: Text('Read More'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
