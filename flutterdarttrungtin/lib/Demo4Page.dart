import 'package:flutter/material.dart';

class Demo4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Phần tiêu đề
        title: const Text(
          "Demo 4 Page",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, //Chữ đậm (bold)
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Column 1.1"),
            Text("Column 1.2"),
            Text("Column 1.3"),
          ],
        ),
      )
    );
  }
}
