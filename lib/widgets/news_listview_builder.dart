import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/loading_indecator.dart';
import 'package:news_app/widgets/news_listview.dart';

class NewsListViewBulider extends StatefulWidget {
  final String newsProvider;
  const NewsListViewBulider({required this.newsProvider, super.key});

  @override
  State<NewsListViewBulider> createState() => _NewsListViewBuliderState();
}

class _NewsListViewBuliderState extends State<NewsListViewBulider> {
  var future;
  

  @override
  void initState() {
    super.initState();
    
    future = NewsService(Dio()).getTopHeadLines(newsProvider: widget.newsProvider);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticaleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListview(
            articaleList: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Text(
              'Oops Not Have Data Or Have Error Conniction ',
              style: TextStyle(color: Colors.black),
            ),
          );
        } else {
          return LoadingIndicatorWidget();
        }
      },
    );
    // return isLoading
    //     ? LoadingIndicatorWidget()
    //     :NewsListview(articaleList: articaleList,);
  }
}
