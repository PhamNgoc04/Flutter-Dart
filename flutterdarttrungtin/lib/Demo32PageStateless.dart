import 'package:flutter/material.dart';
import 'package:flutterdarttrungtin/entity/Product.dart';

class Demo32PageStateless extends StatelessWidget {

  int? id;
  String? username;
  Product? product;
  Map<String, dynamic>? data;


  Demo32PageStateless({this.id, this.username, this.product, this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Phần tiêu đề
        title: const Text(
          "Demo 32 Page Stateless",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, //Chữ đậm (bold)
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("ID: ${id}"),
            Text("Username: ${username}"),
            Text("Product Info: ${product!.id}"),
            Text("Name: ${product!.name}"),
            Text("Price: ${product!.price}"),
            product!.photo!,
            Text("Student Info"),
            Text("ID: ${data!["id"]}"),
            Text("Name: ${data!["name"]}"),
            Text("Score: ${data!["score"]}"),
          ],
        ),
      )
    );
  }
}
