import 'package:ecommerce_app/src/data/data.dart';
import 'package:ecommerce_app/src/models/category.dart';
import 'package:flutter/cupertino.dart';

class Product {
  int id;
  String title;
  String description;
  double price;
  double qtdReviews;
  Image imagePrimary;
  List<Image> images = [];
  List<int> categories = [];

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.qtdReviews,
    required this.imagePrimary,
  });

  adImage(Image image) {
    images.add(image);
  }

  setImagePrimary(Image image) {
    imagePrimary = image;
  }

  addCategory(int category) {
    categories.add(category);
  }

  List<Category> getCategories() {
    List<Category> categories = [];
    for (var idCategory in this.categories) {
      categories.add(Database.categoriesList.firstWhere((category) => category.id == idCategory));
    }
    return categories;
  }
}