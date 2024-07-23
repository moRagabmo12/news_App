import 'package:flutter/material.dart';
import 'package:news_app/models/articleModel.dart';

class newsTile extends StatelessWidget {
  const newsTile({super.key, required this.article});

  final articelModel article;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            article.image ??
                'https://images.skynewsarabia.com/images/v1/2024/05/01/1710454/800/450/1-1710454.jpg',
            height: 200,
            width: 400,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          article.titel,
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        Text(
          article.subtitel ?? '',
          style: TextStyle(
            fontSize: 24,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        )
      ],
    );
  }
}
