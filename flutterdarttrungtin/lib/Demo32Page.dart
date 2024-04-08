import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdarttrungtin/Demo32PageStateFull.dart';
import 'package:flutterdarttrungtin/Demo32PageStateless.dart';

import 'package:flutterdarttrungtin/entity/Product.dart';
import 'package:flutterdarttrungtin/entity/ProductModel.dart';

class Demo32Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Demo32PageState();
  }
}

class Demo32PageState extends State<Demo32Page> {

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
          "Demo 32 Page",
          style: TextStyle(
            fontSize: 30,
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
            ElevatedButton(
                onPressed: () => openStatelessPage(),
                child: Text("Open Stateless Page")
            ),
            ElevatedButton(
                onPressed: () => openStatefulPage(),
                child: Text("Open Stateful Page")
            ),
          ],
        ),
      )
    );
  }

  void openStatefulPage() {
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => Demo32PageStateFul(
          id: 2304,
          username: "Phạm Bích Ngọc",
          product: Product(
              id: 23042004,
              name: "Tivi",
              price: 200000,
              photo: Image.asset("assets/images/burger.png")),
        ),
      ),
    );
  }
  void openStatelessPage() {

    var student = {
      "ID": 345,
      "Name": "Student 1",
      "Score": 9.9
    };

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Demo32PageStateless(
            id: 2304,
            username: "Phạm Ngọc",
            product: Product(
                id: 01, 
                name: "Máy tính",
                price: 100000, 
                photo: Image.asset("assets/images/wallet.png")),
            data: student,
          )
        ),
     );
  }

}
