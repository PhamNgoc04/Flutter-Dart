import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdarttrungtin/Demo32PageStatefulProduct.dart';

import 'package:flutterdarttrungtin/entity/Product.dart';
import 'package:flutterdarttrungtin/entity/ProductModel.dart';

class Demo31Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Demo31PageState();
  }
}

class Demo31PageState extends State<Demo31Page> {
  List<Product>? products;

  @override
  void initState() {
    super.initState(); // Gọi super.initState() để đảm bảo initState của lớp cha được gọi.
    var productModel = ProductModel();
    products = productModel.findAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Demo 31 Page",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: products!.length,
        itemBuilder: (context, i) {
          return Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Card(
              elevation: 5,
              child: ListTile(
                leading: Padding(
                  padding: EdgeInsets.all(10),
                  child: products![i].photo!,
                ),
                title: Text(
                  products![i].name!,
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Text(
                  "${products![i].price}",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () => details(products![i]),
              ),
            ),
          );
        },
      ),
    );
  }

  void details(Product product) {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => ProductDetails(
          product: product,
          ),
        ),
      );
  }
}
