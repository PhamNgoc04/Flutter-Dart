import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutterdarttrungtin/entity/Product.dart';
import 'package:flutterdarttrungtin/entity/ProductModel.dart';

class Demo29Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Demo29PageState();
  }
}

class Demo29PageState extends State<Demo29Page> {
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
          "Demo 29 Page",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("Option 1"),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text("Option 2"),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text("Option 3"),
                  value: 3,
                ),
              ];
            },
            onSelected: (value) {
              switch (value) {
                case 1:
                  showInfoDialog("Option 1", "This is information for Option 1.");
                  break;
                case 2:
                  showInfoDialog("Option 2", "This is information for Option 2.");
                  break;
                case 3:
                  showInfoDialog("Option 3", "This is information for Option 3.");
                  break;
              }
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: products!.length,
        itemBuilder: (context, i) {
          return GestureDetector(
            onTap: () => showProductDetails(products![i]),
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
                    Text(
                      "${products![i].name}",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void showProductDetails(Product product) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(product.name! ?? ""),
          content: Text("Price: ${product.price}"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Close"),
            ),
          ],
        );
      },
    );
  }

  void showInfoDialog(String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Close"),
            ),
          ],
        );
      },
    );
  }
}
