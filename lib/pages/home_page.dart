
import 'package:flutter/material.dart';

import 'package:news_app/widgets/categoris_listview.dart';

import 'package:news_app/widgets/news_listview_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(child: CategoriesListView()),
        NewsListViewBulider(newsProvider: 'general'),
       
      ],
    );
  }
}


