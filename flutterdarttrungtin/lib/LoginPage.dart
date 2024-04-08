import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdarttrungtin/Demo32PageStateFull.dart';
import 'package:flutterdarttrungtin/Demo32PageStateless.dart';
import 'package:flutterdarttrungtin/entity/AccountModel.dart';

import 'package:flutterdarttrungtin/entity/Product.dart';
import 'package:flutterdarttrungtin/entity/ProductModel.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageSate();
  }
}

class LoginPageSate extends State<LoginPage> {
  var username = TextEditingController(text: "");
  var password = TextEditingController(text: "");

  List<Product>? products;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Login Page",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: username,
                decoration: InputDecoration(
                  hintText: "Username",
                ),
              ),
              TextFormField(
                controller: password,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                  obscureText: true),
              Container(
                margin: EdgeInsets.only(bottom: 10),
              ),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                    child: Text("Login"),
                    onPressed: () => login(),
                  ))
                ],
              )
            ],
          ),
        )
    );
  }

  //Cách của thầy
  // void login() {
  //   var accountModel = AccountModel();
  //   if (accountModel.login(username.text, password.text)) {
  //   } else {
  //     showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: Text("Login"),
  //           content: Text("Tài khoản không hợp lệ?"),
  //         );
  //       },
  //     );
  //   }
  // }

//Cách chatGPT
  void login() {
    var accountModel = AccountModel();
    if (accountModel.login(username.text, password.text)) {
      // Đăng nhập thành công, điều hướng đến trang khác
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Demo32PageStateFul()),
      );
    } else {
      // Đăng nhập thất bại, hiển thị thông báo lỗi
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Login"),
            content: Text("Tài khoản không hợp lệ"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }
}
