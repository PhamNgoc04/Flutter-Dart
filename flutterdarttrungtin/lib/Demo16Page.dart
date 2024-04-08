import 'package:flutter/material.dart';

class Demo16Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
      return Demo16PageState();
  }
}

class Demo16PageState extends State<Demo16Page> {

  var description = new TextEditingController(text: "");
  String msg = "";

  @override
  Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Demo 16",
              style: TextStyle(
                color: Colors.pink,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.yellow,
          ),

          body: SingleChildScrollView( //Dùng để cuộn nội dung khi quá dài
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  controller: description,
                  decoration: InputDecoration(
                    hintText: "Description",
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  onChanged: (value) => descriptionOnChange(value),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 5
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () => save(),
                            child: Text(
                              "Save",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16
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

  void save() {
    // Lưu mô tả và hiển thị thông báo "Saved!"
    setState(() {
      msg = "Saved!";
    });
  }

  void descriptionOnChange(String value) {
    setState(() {
      // Cập nhật giá trị mô tả
      msg = value;
    });
  }

}