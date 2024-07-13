import 'package:flutter/material.dart';
import 'package:news_app/models/categoryModel.dart';
import 'package:news_app/widgets/categoryCard.dart';

class categoryListView extends StatelessWidget {
  const categoryListView({super.key});
  final List<categoryModel> niews = const [
    categoryModel(
      niewName: 'health',
      image: 'assets/health.avif',
    ),
    categoryModel(
      niewName: 'technology',
      image: 'assets/technology.jpeg',
    ),
    categoryModel(
      niewName: 'business',
      image: 'assets/business.avif',
    ),
    categoryModel(
      niewName: 'entertaiment',
      image: 'assets/entertaiment.avif',
    ),
    categoryModel(
      niewName: 'general',
      image: 'assets/general.avif',
    ),
    categoryModel(
      niewName: 'science',
      image: 'assets/science.avif',
    ),
    categoryModel(
      niewName: 'sports',
      image: 'assets/sports.avif',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: niews.length,
        itemBuilder: (context, index) {
          return categoryCard(
            niew: niews[index],
          );
        },
      ),
    );
  }
}
