
import 'package:flutter/material.dart';

import 'package:news_app/models/news_model.dart';

import 'package:news_app/widgets/news_container.dart';

class NewsListview extends StatelessWidget {
  final List<ArticaleModel> articaleList;
  const NewsListview({super.key, required this.articaleList});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articaleList.length,
        (context, index) {
          return NewsContainer(
            newsModel: articaleList[index],
          );
        },
      ),
    );
  }
}


// newsModel.imageSource == null
//                     ? AssetImage('assets/b.png')
//                     : NetworkImage(newsModel.imageSource!),
//                 fit: BoxFit.fill)