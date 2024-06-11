import 'package:flutter/material.dart';
import '../widgets/categories_list_view.dart';
import '../widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Journal',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              ' Cloud',
              style: TextStyle(color: Colors.orange),
            ),
            Text(
              '  News',
              style: TextStyle(
                  color: Colors.blue, fontFamily: 'Pacifico', fontSize: 12),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(
                child: SizedBox(
              height: 20,
            )),
            NewsListViewBuilder(
              category: 'world',
            ),
          ],
        ),
      ),
    );
  }
}
