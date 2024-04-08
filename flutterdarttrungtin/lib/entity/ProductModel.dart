import 'package:flutter/material.dart';
import 'package:flutterdarttrungtin/entity/Product.dart';

class ProductModel {
  List<Product> findAll() {
    return [
      Product(
        id: 1,
        name: "Tivi",
        price: 5.6,
        photo: Image.asset(
          "assets/images/salad.png",
          fit: BoxFit.cover,
        ),
      ),
      Product(
        id: 2,
        name: "Laptop",
        price: 7.8,
        photo: Image.asset(
          "assets/images/salad2.png",
          fit: BoxFit.cover,
        ),
      ),
      Product(
        id: 3,
        name: "Computer",
        price: 9.9,
        photo: Image.asset(
          "assets/images/salad3.png",
          fit: BoxFit.cover,
        ),
      ),
    ];
  }

  List<Product> searchByKeyword(String keyword) {
    return findAll()
        .where((product) => product.name!.contains(keyword))
        .toList();
  }

  List<Product> searchByPrices(double min, double max) {
    return findAll()
        .where((product) => product.price! >= min && product.price! <= max)
        .toList();
  }
}
