import 'package:ecommerce_app/src/data/data.dart';
import 'package:ecommerce_app/src/models/category.dart';
import 'package:ecommerce_app/src/models/product.dart';
import 'package:ecommerce_app/src/shared/components/category_item.dart';
import 'package:ecommerce_app/src/shared/components/product_card.dart';
import 'package:ecommerce_app/src/shared/components/product_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> productsList = [];
  List<Category> categoriesList = [];

  @override
  void initState() {
    super.initState();
    categoriesList = Database.categoriesList;
    productsList = Database.productsList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF7F6F4),
        body: SingleChildScrollView(
          // padding: const EdgeInsets.only(
          //   left: 20,
          // ),
          child: SafeArea(
            child: Column(children: [
              Container(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
                child: searchAndNotifications(),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Column(children: [
                  const SizedBox(height: 20),
                  categoriesListHorizontal(),
                  const SizedBox(height: 20),
                  textTitleSession("Hot sales"),
                  const SizedBox(height: 20),
                  cardsProductsHorizontal(),
                  const SizedBox(height: 20),
                  textTitleSession("Recently viewed"),
                  const SizedBox(height: 20),
                ]),
              ),
              // cardsProductsVertical(),
              Container(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: listCard(),
              ),
            ]),
          ),
        ));
  }

  Widget listCard() {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: 600,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.68,
        ),
        itemBuilder: (context, i) =>
            ProductCard(widthFather: size.width, product: productsList[i]),
        itemCount: productsList.length,
      ),
    );
  }

  Row textTitleSession(String text) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(child: Container())
      ],
    );
  }

  Widget cardsProductsHorizontal() {
    return SizedBox(
      height: 210,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productsList.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return ProductItem(
            product: productsList[index],
          );
        },
      ),
    );
  }

  Widget cardsProductsVertical() {
    return SizedBox(
      height: 210,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: productsList.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return ProductItem(
            product: productsList[index],
          );
        },
      ),
    );
  }

  setIdCategory(int id) {}

  Widget categoriesListHorizontal() {
    return SizedBox(
      height: 35,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return CategoryItem(
            category: categoriesList[index],
            setState: setState,
            setIdSelectCategory: setIdCategory,
          );
        },
      ),
    );
  }

  Widget searchAndNotifications() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SizedBox(
            height: 61,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: const Icon(Icons.search),
                fillColor: Colors.white,
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.7),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.7),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          // padding: const EdgeInsets.all(1.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
          ),
          // width: size.width * 0.2,
          height: 61,
          width: 61,
          child: const Icon(Icons.notifications_none),
        )
      ],
    );
  }
}
