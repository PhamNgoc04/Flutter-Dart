import 'package:flutter/material.dart';

class Product {
  int? id;
  String? name;
  double? price;
  Image? photo;

  Product(
      {required this.id,
        required this.name,
      required this.price,
      required this.photo});
}