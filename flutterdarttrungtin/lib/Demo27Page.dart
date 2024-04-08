import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutterdarttrungtin/entity/Product.dart';
import 'package:flutterdarttrungtin/entity/ProductModel.dart';

class Demo27Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Demo27PageState();
  }
}

class Demo27PageState extends State<Demo27Page> {

  @override
  void initState() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Demo 27 Page",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
          ),
        children: [
          GestureDetector(
            child: Card(
              child: Icon(
                Icons.account_circle,
                size: 50,
              ),
            ),
            onTap: () => details(),
          ),

            Card(
            child: Icon(
              Icons.account_balance,
              size: 50,),
          ),
            Card(
            child: Icon(
              Icons.account_box_outlined,
              size: 50,),
          ),
            Card(
            child: Icon(
              Icons.account_circle,
              size: 50,),
          ),
            Card(
            child: Icon(
              Icons.account_balance,
              size: 50,),
          ),
            Card(
            child: Icon(
              Icons.account_box_outlined,
              size: 50,),
          ),
        ],
      )
    );
  }
  
  void details() {
    print("Details");
  }
}
