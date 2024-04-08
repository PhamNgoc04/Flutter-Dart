import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Demo7Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Phần tiêu đề
          title: const Text(
            "Demo 7 Page",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold, //Chữ đậm (bold)
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Icon(Icons.access_alarm_outlined),
              Icon(
                Icons.access_alarm,
                color: Colors.pink,
                size: 70,
              ),
            ],
          ),
        ));
  }
}
