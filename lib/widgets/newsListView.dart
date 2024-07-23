import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articleModel.dart';
import 'package:news_app/services/newsServices.dart';
import 'package:news_app/widgets/newsTile.dart';

class newsListView extends StatelessWidget {
  const newsListView({super.key, required this.articles});

  final List<articelModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: newsTile(
              article: articles[index],
            ),
          );
        },
      ),
    );
  }
}
