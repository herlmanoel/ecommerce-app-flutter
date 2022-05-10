import 'package:ecommerce_app/src/models/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  Product product;
  double widthFather;
  ProductCard({required this.widthFather, required this.product, Key? key})
      : super(key: key);
  getColor() {
    return (product.id % 2) == 0
        ? const Color(0xFFEFC5E0)
        : const Color(0xFFD1C3DC);
  }

  @override
  Widget build(BuildContext context) {
    const double widthCard = 160;
    const double paddingCard = 10;
    var size = MediaQuery.of(context).size;
    var sizeCard = (size.width / 2) - 10;
    return Container(
      // margin: const EdgeInsets.only(right: 20),
      // padding: const EdgeInsets.all(paddingCard),
      decoration: BoxDecoration(
        color: getColor(),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          // BoxShadow(
          //   color: Colors.grey.withOpacity(0.5),
          //   spreadRadius: 2,
          //   blurRadius: 7,
          //   offset: const Offset(0, 3), // changes position of shadow
          // ),
        ],
      ),
      width: 100,
      child: Column(
        children: [
          const SizedBox(height: 28),
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
}
