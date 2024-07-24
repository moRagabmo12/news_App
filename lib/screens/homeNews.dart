import 'package:flutter/material.dart';
import 'package:news_app/models/categoryModel.dart';
import 'package:news_app/widgets/categoryListView.dart';
import 'package:news_app/widgets/categoryCard.dart';
import 'package:news_app/widgets/newsListView.dart';
import 'package:news_app/widgets/newsListViewBuilder.dart';
import 'package:news_app/widgets/newsTile.dart';

class homeNews extends StatelessWidget {
  homeNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(mainAxisSize: MainAxisSize.min, children: [
          Text(
            'News',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          Text(
            'Clude',
            style: TextStyle(color: Colors.orange, fontSize: 24),
          ),
        ]),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: categoryListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 40,
              ),
            ),
            newsListViewBuilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
