import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Demo24Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Demo24PageState();
  }
}

class Demo24PageState extends State<Demo24Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Demo 24 Page",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Padding(
            padding: EdgeInsets.only(
                bottom: 5),
            child: Card(
              elevation: 5,
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Product 1"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () => details(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Card(
              elevation: 5,
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Product 2"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () => details(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Card(
              elevation: 5,
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Product 3"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () => details(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void details() {
    print("Details");
  }
}
