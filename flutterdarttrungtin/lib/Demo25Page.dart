import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutterdarttrungtin/entity/Product.dart';
import 'package:flutterdarttrungtin/entity/ProductModel.dart';

class Demo25Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Demo25PageState();
  }
}

class Demo25PageState extends State<Demo25Page> {
  List<Product>? products;

  @override
  void initState() {
    super.initState();
    var productModel = ProductModel();
    products = productModel.findAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Demo 25 Page",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: products != null
          ? ListView.builder(
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
                  child: products![i].photo,
                ),
                title: Text(
                  products![i].name!,
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Text("${products![i].price}"),
                onTap: () => details(products![i]),
              ),
            ),
          );
        },
      )
          : Center(
        child: CircularProgressIndicator(), // Hiển thị tiêu đề khi danh sách sản phẩm đang được tải
      ),
    );
  }

  void details(Product product) {
    print("Product Details");
    print("ID: ${product.id}");
  }
}
