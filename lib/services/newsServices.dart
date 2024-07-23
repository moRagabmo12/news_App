import 'package:dio/dio.dart';
import 'package:news_app/models/articleModel.dart';

class newsService {
  final Dio dio;

  const newsService(this.dio);

  Future<List<articelModel>> getgeneralnews() async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?q=general&apiKey=87e8d7ab1e3244039b37b583cec1a799&language=en');
      dynamic jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];
      List<articelModel> articleList = [];
      for (var article in articles) {
        articleList.add(articelModel(
            article['urlToImage'], article['title'], article['description']));
      }
      return articleList;
    } on Exception catch (e) {
      return [];
    }
  }
}
