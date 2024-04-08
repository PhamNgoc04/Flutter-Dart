import 'package:flutter/material.dart';

class Demo2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Demo 2 Page",
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: const Padding(
        padding: EdgeInsets.only( //Có thể truyền thông số vào
          top: 30,
          left: 30,
        ),
        child: Text("Hello World", style: TextStyle(fontSize: 16),),
      ),
    );
  }
}
