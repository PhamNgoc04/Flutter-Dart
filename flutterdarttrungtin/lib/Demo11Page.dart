import 'package:flutter/material.dart';

class Demo11Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Demo11PageState();
  }
}

class Demo11PageState extends State<Demo11Page> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Phần tiêu đề
        title: const Text(
          "Demo 11 Page",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, //Chữ đậm (bold)
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => count(),
                      child: Text("Count"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        foregroundColor: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5),
              ),
              Text(
                "$counter", // Hiển thị giá trị của biến counter
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.pink
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void count() {
    setState(() { //Hàm để thay đổi giao diện khi ta thao tác
      counter++;
    });
  }
}
