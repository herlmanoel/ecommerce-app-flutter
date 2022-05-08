import 'package:ecommerce_app/src/data/data.dart';
import 'package:ecommerce_app/src/models/product.dart';

class Category {
  int id;
  String title;
  bool? isSelected = false;

  Category({
    required this.id,
    required this.title,
    this.isSelected,
  });

  List<Product> getProductsByCategory() {
    List<Product> products = [];
    for (var product in Database.productsList) {
      if (product.categories.contains(id)) {
        products.add(product);
      }
    }
    return products;
  }
}