import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/homeNews.dart';
import 'package:news_app/services/newsServices.dart';

void main() {
  runApp(newsApp());
}

class newsApp extends StatelessWidget {
  const newsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeNews(),
    );
  }
}
