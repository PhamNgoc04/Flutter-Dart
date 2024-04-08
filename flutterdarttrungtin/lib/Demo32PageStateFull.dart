import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdarttrungtin/Demo32PageStateless.dart';

import 'package:flutterdarttrungtin/entity/Product.dart';
import 'package:flutterdarttrungtin/entity/ProductModel.dart';

/*
Tóm lại, các thuộc tính trong lớp kế thừa từ StatefulWidget thường được sử dụng
để cấu hình và điều chỉnh widget, trong khi các thuộc tính trong lớp kế thừa từ
State thường được sử dụng để lưu trữ trạng thái và dữ liệu tạm thời của widget.
 */
class Demo32PageStateFul extends StatefulWidget {
  int? id;
  String? username;
  Product? product;

  Demo32PageStateFul({this.id,this.username, this.product});

  @override
  State<StatefulWidget> createState() {
    return Demo32PageStateFulState();
  }
}

class Demo32PageStateFulState extends State<Demo32PageStateFul> {

  List<Product>? products;

  @override
  void initState() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Demo 32 Page Statefull",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
                Text("ID: ${widget.id}"),
                Text("Username: ${widget.username}"),
                Text("Product Info: ${widget.product!.id}"),
                Text("Name: ${widget.product!.name}"),
                Text("Price: ${widget.product!.price}"),
            ],
          ),
        )
    );
  }


}
