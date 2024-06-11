import 'package:dio/dio.dart';
import 'package:journal/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsdata.io/api/1/latest?apikey=pub_45416adbf258154481a927353b61ebdf61270&country=eg&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['results'];
      List<ArticleModel> articleList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
