import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdarttrungtin/Demo32PageStateFull.dart';
import 'package:flutterdarttrungtin/Demo32PageStateless.dart';
import 'package:flutterdarttrungtin/Demo33Page.dart';
import 'package:flutterdarttrungtin/entity/Contact.dart';

import 'package:flutterdarttrungtin/entity/Product.dart';
import 'package:flutterdarttrungtin/entity/ProductModel.dart';
import 'package:flutterdarttrungtin/helper/DBHelper.dart';

class AddContactPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddContactPageState();
  }
}

class AddContactPageState extends State<AddContactPage> {
  var name = TextEditingController(text: "");
  var phone = TextEditingController(text: "");
  var email = TextEditingController(text: "");
  var address = TextEditingController(text: "");
  var description = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Contact",
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
              controller: name,
              decoration: InputDecoration(
                hintText: "Name",
              ),
              keyboardType: TextInputType.text,
            ),
            TextFormField(
              controller: phone,
              decoration: InputDecoration(
                hintText: "Phone",
              ),
              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                hintText: "Email",
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              controller: address,
              decoration: InputDecoration(
                hintText: "Address",
              ),
              keyboardType: TextInputType.streetAddress,
            ),
            TextFormField(
              controller: description,
              decoration: InputDecoration(
                hintText: "Description",
              ),
              keyboardType: TextInputType.multiline,
              maxLines: 5,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => save(),
                    child: Text("Save"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void save() async {
    var contact = Contact(
      name: name.text,
      phone: phone.text,
      description: description.text,
      email: email.text,
      address: address.text,
    );
    var dbHelper = DBHelper();
    if (await dbHelper.create(contact)) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Demo33Page(),
          ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text("Failed"),
          );
        },
      );
    }
  }
}
