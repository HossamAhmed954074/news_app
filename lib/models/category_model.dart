

class CategoryModel {
  String imageSource;
  String title;
  Function()? onPressed;
  CategoryModel(
      {required this.imageSource, required this.title, this.onPressed});
}

List<CategoryModel> categoryList = [
  CategoryModel(
    imageSource: 'assets/business.avif',
    title: 'Business',
  ),
  CategoryModel(
      imageSource: 'assets/entertaiment.avif', title: 'Entertainment'),
  CategoryModel(imageSource: 'assets/general.avif', title: 'General'),
  CategoryModel(imageSource: 'assets/health.avif', title: 'Health'),
  CategoryModel(imageSource: 'assets/science.avif', title: 'Science'),
  CategoryModel(imageSource: 'assets/sports.avif', title: 'Sports'),
  CategoryModel(imageSource: 'assets/technology.jpeg', title: 'Technology'),
];
