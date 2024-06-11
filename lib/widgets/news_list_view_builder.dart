import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../models/article_model.dart';
import '../services/news_service.dart';
import 'newstile_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  // bool isLoading = true;
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SliverFillRemaining(
              child: Center(
                  child:
                      CircularProgressIndicator())); // Show a loading indicator
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}'); // Display the error message
        } else if (snapshot.hasData) {
          return NewsTileListView(
            articles: snapshot.data!,
          ); // Show the fetched data
        } else {
          return const SliverFillRemaining(
              child: Center(
                  child: Text(
                      'OoPs!...There is No Data,Please try again Later.'))); // Handle the case of no data
        }
      },
    );
  }
}
