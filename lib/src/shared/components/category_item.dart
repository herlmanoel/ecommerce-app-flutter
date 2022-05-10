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
          style: TextStyle(
            fontSize: 15,
            color: const Color(0xFF343A40),
            fontWeight: getFontWeight(),
          ),
        ),
      ),
    );
  }

  FontWeight getFontWeight() {
    return category.isSelected == true ? FontWeight.w900 : FontWeight.w500;
  }

  getColor() {
    return category.isSelected == true
        ? const Color(0xFF343A40)
        : const Color.fromRGBO(207, 207, 207, 0.5);
  }
}
