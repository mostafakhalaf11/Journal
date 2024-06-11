class ArticleModel {
  final String? image;
  final String? title;
  final String? subTitle;
  final String? newsUrl;
  const ArticleModel(
      {required this.image,
      required this.title,
      required this.subTitle,
      required this.newsUrl});
  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        image: json['image_url'],
        title: json['title'],
        subTitle: json['description'],
        newsUrl: json['link']);
  }
}
