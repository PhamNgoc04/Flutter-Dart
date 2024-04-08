import 'package:flutter/material.dart';

class Demo12Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Demo12PageState();
  }
}

class Demo12PageState extends State<Demo12Page> {

  var username = TextEditingController(text: "acc1");
  String msg = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Phần tiêu đề
        title: const Text(
          "Demo 12 Page",
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
              TextFormField(
                controller: username,
                decoration: const InputDecoration(
                  hintText: "Username",
                ),
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  setState(() {
                    value;
                  });
                },
              ),
              Text(
                "${username.text}",
                style: TextStyle(fontSize: 30),
              ),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () => check(),
                          child: const Text(
                            "Check",
                            style: TextStyle(
                                color: Colors.pink,
                                fontSize: 20),
                          )))
                ],
              ),
              Text(
                "${msg}",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void check() {
      if(username.text == "abc") {
         setState(() {
           msg = "Username đã tồn tại";
        });
      }
      else {
          setState(() {
            msg = "Username chưa tồn tại";
          });
      }
  }
}
