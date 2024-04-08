import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutterdarttrungtin/entity/Product.dart';
import 'package:flutterdarttrungtin/entity/ProductModel.dart';

class Demo28Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Demo28PageState();
  }
}

class Demo28PageState extends State<Demo28Page> {

  List<Product>? products;

  @override
  void initState() {
    var productModel = ProductModel();
    products = productModel.findAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Demo 28 Page",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3
            ),
            itemCount: products!.length,
            itemBuilder: (context, i) {
              return GestureDetector(
                child: Card(
                    child: Padding(
                        padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 30,
                             child: products![i].photo!,
                          ),
                          Text("${products![i].name}",
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                        ],
                      ),
                    ),
                ),
                onTap: () => details,
              );
            },
        ),
    );
  }

  void details() {
    print("Details");
  }
}
