import 'package:dio/dio.dart';
import 'package:news_app/models/articleModel.dart';

class newsService {
  final Dio dio;

  const newsService(this.dio);

  Future<List<articelModel>> getTopHeadlines({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=87e8d7ab1e3244039b37b583cec1a799&category=$category');
      dynamic jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];
      List<articelModel> articleList = [];
      for (var article in articles) {
        articleList.add(articelModel.jusonModel(article));
      }
      return articleList;
    } on Exception catch (e) {
      return [];
    }
  }
}
