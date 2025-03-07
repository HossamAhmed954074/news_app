
import 'package:flutter/material.dart';
import 'package:news_app/pages/home_page.dart';


void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: HomePage(),
        ),
      ),
      routes: {
        'home': (context) => HomePage(),
      },
    );
  }
}
