import 'package:flutter/material.dart';
import '../models/article_model.dart';
import 'news_tile.dart';

class NewsTileListView extends StatelessWidget {
  const NewsTileListView({
    super.key,
    required this.articles,
  });
  final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    // print(articles.length);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 18),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
