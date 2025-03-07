import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(bottom: 8),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, int index) {
            return CardCategory(categoryModel: categoryList[index]);
          }),
    );
  }
}