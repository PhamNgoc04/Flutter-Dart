import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Demo6Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Phần tiêu đề
          title: const Text(
            "Demo 6 Page",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold, //Chữ đậm (bold)
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body:  Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Column 1.1"),
                    Text("Column 1.2"),
                    Text("Column 1.3"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Column 2.1"),
                    Text("Column 2.2"),
                    Text("Column 2.3"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Column 3.1"),
                    Text("Column 3.2"),
                    Text("Column 3.3"),
                  ],
                ),
              ],
            )
        )
    );
  }
}
