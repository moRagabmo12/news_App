import 'package:flutter/material.dart';
import 'package:news_app/widgets/newsListView.dart';
import 'package:news_app/widgets/newsListViewBuilder.dart';

class categoryNews extends StatelessWidget {
  const categoryNews({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          newsListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
