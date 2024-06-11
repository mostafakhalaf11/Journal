// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:journal/services/news_service.dart';
// import '../models/article_model.dart';
// import 'news_tile.dart';
//
// class newstile_list_view extends StatefulWidget {
//   const newstile_list_view({
//     super.key,
//   });
//   @override
//   State<newstile_list_view> createState() => _newstile_list_viewState();
// }
//
// class _newstile_list_viewState extends State<newstile_list_view> {
//   List<ArticleModel> articles = [];
//   bool isLoading = true;
//
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }
//
//   Future<void> getGeneralNews() async {
//     articles = await NewsService(Dio()).getNews();
//     isLoading = false;
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return isLoading ? const SliverFillRemaining(child: Center(child: CircularProgressIndicator())): SliverList(
//       delegate: SliverChildBuilderDelegate(
//         childCount: articles.length,
//             (context, index) {
//           return Padding(
//             padding: const EdgeInsets.only(bottom: 18),
//             child: NewsTile(
//               articleModel: articles[index],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
