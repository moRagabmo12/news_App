import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articleModel.dart';
import 'package:news_app/services/newsServices.dart';
import 'package:news_app/widgets/newsTile.dart';

class newsListView extends StatefulWidget {
  const newsListView({super.key});

  @override
  State<newsListView> createState() => _newsListViewState();
}

class _newsListViewState extends State<newsListView> {
  @override
  List<articlsModel> articles2 = [];
  void initState() {
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    articles2 = await newsService(Dio()).getgeneralnews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles2.length,
        (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: newsTile(
              article: articles2[index],
            ),
          );
        },
      ),
    );
  }
}
