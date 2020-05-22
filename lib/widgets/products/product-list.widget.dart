import 'package:flutter/material.dart';
import 'package:shopping/widgets/products/product-card.widget.dart';

class ProductList extends StatelessWidget {
  final Axis scrollDirection;

  ProductList({@required this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: scrollDirection,
        children: <Widget>[
          ProductCard(
            title: "Nike Dry-Fit Long Sleeve",
            description: "Nike",
            image: "assets/product-10.png",
            price: 150,
          ),
          ProductCard(
            title: "BeoPlay Speaker",
            description: "Bang and Olufsen",
            image: "assets/product-1.png",
            price: 755,
          ),
          ProductCard(
            title: "Leather Wristwatch",
            description: "Tag",
            image: "assets/product-2.png",
            price: 450,
          ),
          ProductCard(
            title: "Smart Bluetooth Speaker",
            description: "Google",
            image: "assets/product-3.png",
            price: 300,
          ),
          ProductCard(
            title: "suitcase",
            description: "white",
            image: "assets/product-4.png",
            price: 200,
          ),
          ProductCard(
            title: "cell phone",
            description: "Sansung S9",
            image: "assets/product-5.png",
            price: 500,
          ),
          ProductCard(
            title: "Light fixture",
            description: "Illuminates everything",
            image: "assets/product-6.png",
            price: 900,
          ),
          ProductCard(
            title: "Headfone",
            description: "Google",
            image: "assets/product-7.png",
            price: 100,
          ),
          ProductCard(
            title: "Smart",
            description: "Google",
            image: "assets/product-8.png",
            price: 900,
          ),
        ],
      ),
    );
  }
}
