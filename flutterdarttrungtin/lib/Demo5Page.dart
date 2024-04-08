import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Demo5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Phần tiêu đề
          title: const Text(
            "Demo 5 Page",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold, //Chữ đậm (bold)
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Column 1.1"),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 10,
              ),
              const Text("Column 1.2"),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 10,
              ),
              const Text("Column 1.3"),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 10,
              ),
            ],
          ),
        )
    );
  }
}
