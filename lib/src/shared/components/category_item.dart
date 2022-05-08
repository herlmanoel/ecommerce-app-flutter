import 'package:ecommerce_app/src/models/category.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  Category category;
  final Function(Function()) setState;
  final Function(int id) setIdSelectCategory;

  CategoryItem(
      {required this.category,
      required this.setState,
      required this.setIdSelectCategory,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      margin: const EdgeInsets.only(right: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: getColor()),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: () {
          setState(() {});
        },
        child: Text(
          category.title,
          style: const TextStyle(fontSize: 15, color: Colors.black),
        ),
      ),
    );
  }

  getColor() {
    return category.isSelected == true ? Colors.black : Colors.grey[300];
  }
}
