import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebNews extends StatefulWidget {
  final String url;
   const WebNews({required this.url,super.key});

  @override
  State<WebNews> createState() => _WebNewsState();
}

class _WebNewsState extends State<WebNews> {
var controler;
  @override
  void initState() {
    super.initState();
    controler = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)
    ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web News'),
        centerTitle: true,
      ),
      body:  WebViewWidget(controller: controler),
    );
  }
}
