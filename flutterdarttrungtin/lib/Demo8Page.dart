import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Demo8Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Phần tiêu đề
        title: const Text(
          "Demo 8 Page",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, //Chữ đậm (bold)
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // Image.network(
            //   "https://www.iwmbuzz.com/wp-content/uploads/2020/11/hottie-blackpink-lisas-sexiest-moments-4.jpg"
            // )
            // Image.asset(
            //   "assets/images/screen1.png",
            //   width: 200,
            //   height: 500,
            // )
            TextButton(
                onPressed: () => clickMe1(),
                child: const Text("Click Me 1"))
          ],
        ),
      ),
    );
  }

  void clickMe1() {
    print("Click Me 1");
  }
}
