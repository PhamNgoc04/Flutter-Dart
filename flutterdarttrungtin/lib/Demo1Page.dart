import 'package:flutter/material.dart';

class Demo1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Phần tiêu đề
        title: const Text(
          "Demo 1 Page",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, //Chữ đậm (bold)
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: const Text(
        "Hello World",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 30,
            color: Colors.pink),
      ),
    );
  }
}
