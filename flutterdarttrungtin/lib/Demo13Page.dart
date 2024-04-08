import 'package:flutter/material.dart';

class Demo13Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Demo13PageState();
  }
}

class Demo13PageState extends State<Demo13Page> {
  String? fullName;
  String? msg;

  @override
  void initState() {
    super.initState();
    fullName = "";
    msg = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Demo 13",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Full Name",
                icon: Icon(Icons.account_box_outlined),
              ),
              keyboardType: TextInputType.text,
              onChanged: (value) => fullNameOnChange(value), //Mục địch để cập nhập mỗi khi nhập giá trị
            ),
            Text(
              fullName!,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => hello(),
                    child: Text(
                      "Xác nhận",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              msg!,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  //Hàm này dùng để thông báo fullName có sự thay đổi
  void fullNameOnChange(String value) {
    setState(() {
      fullName = value;
    });
  }

  void hello() {
    if (fullName == "Pham Bich Ngoc") {
      setState(() {
        msg = "Valid";
      });
    } else {
      setState(() {
        msg = "Not Valid";
      });
    }
  }
}
