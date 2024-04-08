import 'package:flutter/material.dart';

class Demo10Page extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Phần tiêu đề
          title: const Text(
            "Demo 10 Page",
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
                            foregroundColor: Colors.blue),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5 ),
                ),
                Text(
                  " ${counter}",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }

  void count() {
    counter++;
    print("Counter: ${counter}");
  }
}
