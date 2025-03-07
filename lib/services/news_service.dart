import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticaleModel>> getTopHeadLines(
      {required String newsProvider}) async {
    // try {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=9ac5fbd17ea14b358ca4b86afd6d554e&country=us&category=$newsProvider');
    Map<String, dynamic> jasonData = response.data;

    List<dynamic> articales = jasonData['articles'];

    List<ArticaleModel> articalesList = [];

    for (var articale in articales) {
      ArticaleModel articaleModel = ArticaleModel(
        imageSource: articale['urlToImage'],
        title: articale['title'] ?? 'Not Have Title',
        subTitle: articale['description'] ?? 'Not Have Descrebtion',
        source: Source(
            id: articale['source']['id'] ?? '',
            name: articale['source']['name'] ?? ''),
            urlWebView: articale['url'],
      );
      articalesList.add(articaleModel);
    }
    return articalesList;
    // } catch (e) {
    //   return [];
    // }
  }
}


//https://newsapi.org/v2/top-headlines?apiKey=9ac5fbd17ea14b358ca4b86afd6d554e&country=us&category=general