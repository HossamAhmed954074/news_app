import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_listview_builder.dart';

class CatigoryNews extends StatelessWidget {
  final String newsProvider;
  const CatigoryNews({required this.newsProvider, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(newsProvider),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          NewsListViewBulider(newsProvider: newsProvider),
        ],
      ),
    );
  }
}
