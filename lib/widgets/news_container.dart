import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/pages/web_news.dart';

class NewsContainer extends StatelessWidget {
  final ArticaleModel newsModel;
  const NewsContainer({required this.newsModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WebNews(url: newsModel.urlWebView),
              ));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10), // Image border
              // Image radius
              child: Image(
                  image: newsModel.imageSource == null
                      ? AssetImage('assets/b.png')
                      : NetworkImage(newsModel.imageSource!),
                  fit: BoxFit.fill),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                newsModel.title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
                maxLines: 2,
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
              ),
            ),
            Text(
              newsModel.subTitle,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
