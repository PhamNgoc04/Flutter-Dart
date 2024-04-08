import 'package:flutter/material.dart';

class Demo3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Phần tiêu đề
          title: const Text(
            "Demo 3 Page",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold, //Chữ đậm (bold)
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Text(
            'Hello Ngọc',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),
          ),
          width: 200,
          height: 200,
          color: Colors.pink,
          margin: EdgeInsets.all(30),
          padding: EdgeInsets.all(30),
        ));
  }
}
