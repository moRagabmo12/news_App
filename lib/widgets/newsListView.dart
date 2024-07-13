import 'package:flutter/material.dart';
import 'package:news_app/widgets/newsTile.dart';

class newsListView extends StatelessWidget {
  const newsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: 10,
      (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: newsTile(),
        );
      },
    ));
  }
}
