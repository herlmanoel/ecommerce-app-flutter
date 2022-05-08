import 'package:ecommerce_app/src/models/product.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  Product product;
  ProductItem({required this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double widthCard = 160;
    const double paddingCard = 15;
    return Container(
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(paddingCard),
      decoration: BoxDecoration(
        color: const Color(0xFFCFCFCF),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      width: widthCard,
      child: Column(
        children: [
          textTag("Free shipping"),
          const SizedBox(height: 20),
          Transform.scale(
            scale: 1.2,
            child: Center(child: product.imagePrimary),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: widthCard - (paddingCard * 2),
            child: Text(
              product.title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: widthCard - (paddingCard * 2),
            child: Text(
              "\$${product.price}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }

  Widget textTag(String text) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.amber,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Container(),
        )
      ],
    );
  }
}
