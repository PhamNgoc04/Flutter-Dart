import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Demo9Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Phần tiêu đề
        title: const Text(
          "Demo 9 Page",
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
                onLongPress: () => clickMe1LongPress(),
                child: const Text(
                  "Click Me 1",
                  style: TextStyle(fontSize: 20),
                )),
            ElevatedButton(
                onPressed: () => clickMe2(), child: const Text("Click Me 2")),
            Container(
              margin: const EdgeInsets.only(bottom: 5),
            ),
            OutlinedButton(
                onPressed: () => clickMe3(), child: const Text("Click Me 3")),
            Container(
              margin: const EdgeInsets.only(bottom: 5),
            ),
            IconButton(
                onPressed: () => clickMe4,
                icon: const Icon(
                  Icons.account_box,
                  size: 50,
                  color: Colors.pink,
                )),
            Container(
              margin: const EdgeInsets.only(bottom: 5),
            ),
            IconButton(
              onPressed: () => clickMe5,
              icon: Image.asset(
                "assets/images/salad2.png",
                width: 70,
                height: 70,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 5),
            ),
            ElevatedButton.icon(
                onPressed: () => save(),
                icon: const Icon(Icons.save, color: Colors.white,),
                label: const Text("Save"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.blue
                ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 5),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                  onPressed: () => save(),
                  icon: const Icon(Icons.save, color: Colors.white,),
                  label: const Text("Save"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      foregroundColor: Colors.blue
                  ),
                ),)
              ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 5),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () => save(),
                    icon: const Icon(Icons.save, color: Colors.white,),
                    label: const Text("Cancel"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white
                    ),
                  ),),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                ),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () => save(),
                    icon: const Icon(Icons.save, color: Colors.white,),
                    label: const Text("Login"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white
                    ),
                  ),)
              ],
            ),
          ],
        ),
      ),
    );
  }

  void clickMe1() {
    print("Click Me 1");
  }

  void clickMe1LongPress() {
    print("Click Me 1 - Long Press");
  }

  void clickMe2() {
    print("Click Me 2");
  }

  void clickMe3() {
    print("Click Me 3");
  }

  void clickMe4() {
    print("Click Me 4");
  }

  void clickMe5() {
    print("Click Me 5");
  }

  void save() {
    print("Saved");
  }
}
