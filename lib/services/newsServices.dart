import 'package:dio/dio.dart';
import 'package:news_app/models/articleModel.dart';

class newsService {
  final Dio dio;

  const newsService(this.dio);

  Future<List<articlsModel>> getgeneralnews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apikey=87e8d7ab1e3244039b37b583cec1a799&country=us');
    dynamic jsonData = response.data;

    List<dynamic> articles = jsonData['articles'];
    List<articlsModel> articleList = [];
    for (var article in articles) {
      articleList.add(articlsModel(
          article['urlToImage'], article['title'], article['description']));
    }
    return articleList;
  }
}
