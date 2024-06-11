import 'package:flutter/material.dart';
import 'package:journal/widgets/web_view.dart';
import '../models/article_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.articleModel,
  });
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        const SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()));

        if (articleModel.newsUrl == null) {
          // print('data');
          Fluttertoast.showToast(
              msg: "Sorry, This Link is not available Now!",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.blue,
              textColor: Colors.white,
              fontSize: 16);
          return;
        }
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => WebViewContainer(
                    newsUrl: articleModel.newsUrl,
                  )),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                errorBuilder: (context, error, stackTrace) {
                  return Center(
                      child: Image.network(
                          'https://blog.sqlauthority.com/wp-content/uploads/2007/06/null-500x259.png'));
                },
                articleModel.image ??
                    'https://blog.sqlauthority.com/wp-content/uploads/2007/06/null-500x259.png',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 12,
          ),
          Text(
            articleModel.title ?? 'Null Title',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articleModel.subTitle ?? 'Null Description',
            maxLines: 2,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
