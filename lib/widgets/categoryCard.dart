import 'package:flutter/material.dart';
import 'package:news_app/models/categoryModel.dart';
import 'package:news_app/screens/categoryNews.dart';

class categoryCard extends StatelessWidget {
  categoryCard({super.key, required this.niew});
  final categoryModel niew;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return categoryNews(
            category: niew.niewName,
          );
        }));
      },
      child: Padding(
        padding: EdgeInsets.only(right: 8),
        child: Container(
          height: 100,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(niew.image),
            ),
          ),
          child: Center(
            child: Text(
              niew.niewName,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
