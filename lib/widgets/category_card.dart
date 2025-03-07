import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/pages/catigory_page.dart';

class CardCategory extends StatelessWidget {
  final CategoryModel categoryModel;
  const CardCategory({required this.categoryModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CatigoryNews(
                  newsProvider: categoryModel.title,
                ),
              ));
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 180,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10), // Image border
                // Image radius
                child: Image.asset(categoryModel.imageSource, fit: BoxFit.fill),
              ),
            ),
            Text(
              categoryModel.title,
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
