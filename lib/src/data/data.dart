import 'package:ecommerce_app/src/models/category.dart';
import 'package:ecommerce_app/src/models/product.dart';
import 'package:ecommerce_app/src/shared/images/app_images.dart';

class Database {
  static List<Product> productsList = [
    Product(id: 1, title: 'Macbook Air M1', description: 'aaaaaaaaa', price: 100, imagePrimary: AppImages.macbook, qtdReviews: 2),
    Product(id: 2, title: 'Macbook Air M1', description: 'aaaaaaaaa', price: 100, imagePrimary: AppImages.macbook, qtdReviews: 2),
    Product(id: 3, title: 'Macbook Air M1', description: 'aaaaaaaaa', price: 100, imagePrimary: AppImages.macbook, qtdReviews: 2),
    Product(id: 4, title: 'Macbook Air M1', description: 'aaaaaaaaa', price: 100, imagePrimary: AppImages.macbook, qtdReviews: 2),
  ];
  static List<Category> categoriesList = [
    Category(id: 1, title: 'Fashion', isSelected: true),
    Category(id: 2, title: 'Electronics', isSelected: false),
    Category(id: 3, title: 'Home', isSelected: false),
    Category(id: 4, title: 'Sports', isSelected: false),
    Category(id: 5, title: 'Books', isSelected: false),
    Category(id: 6, title: 'Movies', isSelected: false),
    Category(id: 7, title: 'Music', isSelected: false),
    Category(id: 8, title: 'Games', isSelected: false),
    Category(id: 9, title: 'Tools', isSelected: false),
  ];


  static List<Product> sortProductsByTitle() {
    productsList.sort((a, b) => a.title.compareTo(b.title));
    return productsList;
  }

  static List<Product> sortProductsByPrice() {
    productsList.sort((a, b) => a.price.compareTo(b.price));
    return productsList;
  }

  static List<Category> sortCategoriesIsSelected() {
    categoriesList.sort((a, b) => a.isSelected == true ? -1 : 1);
    return categoriesList;
  }

}