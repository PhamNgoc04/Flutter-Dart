import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdarttrungtin/Demo32PageStateless.dart';

import 'package:flutterdarttrungtin/entity/Product.dart';
import 'package:flutterdarttrungtin/entity/ProductModel.dart';

class ProductDetails extends StatefulWidget {

  Product? product;

  ProductDetails({this.product});

  @override
  State<StatefulWidget> createState() {
    return ProductDetailsState();
  }
}

class ProductDetailsState extends State<ProductDetails> {

  List<Product>? products;

  @override
  void initState() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Product Detail",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  widget.product!.photo!,
                  Text("Product Info: ${ widget.product!.id}"),
                  Text("Name: ${ widget.product!.name}"),
                  Text("Price: ${ widget.product!.price}"),
                ],
              )
          ),
        )
    );
  }
}
