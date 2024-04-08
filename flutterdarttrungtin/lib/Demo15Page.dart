import 'package:flutter/material.dart';

class Demo15Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Demo15PageState();
  }
}

class Demo15PageState extends State<Demo15Page> {
  var username = TextEditingController(text: "");
  var password = TextEditingController(text: "");
  String msg = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Demo 15 Page",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: username,
              decoration: const InputDecoration(
                hintText: "Username",
                icon: Icon(Icons.account_box),
              ),
              keyboardType: TextInputType.text,
              onChanged: (value) => usernameOnChange(value),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 5,
              ),
            ),
            TextFormField(
              controller: password,
              decoration: InputDecoration(
                hintText: "Password",
                icon: Icon(Icons.password),
              ),
              keyboardType: TextInputType.text,
              onChanged: (value) => passwordOnChange(value),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 5,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: login,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
            Text(
              msg,
              style: TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }

  void usernameOnChange(String value) {
    // Không cần thêm setState() ở đây vì controller của TextFormField tự động cập nhật giá trị
  }

  void passwordOnChange(String value) {
    // Không cần thêm setState() ở đây vì controller của TextFormField tự động cập nhật giá trị
  }

  void login() {
    if (username.text == "TranThiHongNhung" && password.text == "29042004") {
      setState(() {
        msg = "Chính Xác";
      });
    } else {
      setState(() {
        msg = "Not Chính Xác";
      });
    }
  }
}
