import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articleModel.dart';
import 'package:news_app/services/newsServices.dart';
import 'package:news_app/widgets/newsListView.dart';

class newsListViewBuilder extends StatefulWidget {
  newsListViewBuilder({super.key});

  @override
  State<newsListViewBuilder> createState() => _newsListViewBuilderState();
}

class _newsListViewBuilderState extends State<newsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    future = newsService(Dio()).getgeneralnews();
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<articelModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return newsListView(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Text('oops there was an Error ,try again'),
            );
          } else {
            return SliverToBoxAdapter(
              child: SizedBox(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                  ],
                ),
              ),
            );
          }
        });
  }
}
