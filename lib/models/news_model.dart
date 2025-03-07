class ArticaleModel {
  final String? imageSource;
  final String title;
  final String subTitle;
  final String urlWebView;
  Source? source;

  ArticaleModel({
    required this.imageSource,
    required this.title,
    required this.subTitle,
    required this.urlWebView,
    this.source,
  });
}

class Source {
  String id;
  String name;

  Source({required this.id, required this.name});
}
