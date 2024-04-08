import 'package:flutter/material.dart';
import 'package:flutterdarttrungtin/Demo10Page.dart';
import 'package:flutterdarttrungtin/Demo11Page.dart';
import 'package:flutterdarttrungtin/Demo12Page.dart';
import 'package:flutterdarttrungtin/Demo12PageTinhDTBvaXepLoaiHS.dart';
import 'package:flutterdarttrungtin/Demo12PageTinhHinhChuNhat.dart';
import 'package:flutterdarttrungtin/Demo12PageTinhHinhVuong.dart';
import 'package:flutterdarttrungtin/Demo13Page.dart';
import 'package:flutterdarttrungtin/Demo15Page.dart';
import 'package:flutterdarttrungtin/Demo16Page.dart';
import 'package:flutterdarttrungtin/Demo17Page1821Page.dart';
import 'package:flutterdarttrungtin/Demo1Page.dart';
import 'package:flutterdarttrungtin/Demo23Page.dart';
import 'package:flutterdarttrungtin/Demo24Page.dart';
import 'package:flutterdarttrungtin/Demo25Page.dart';
import 'package:flutterdarttrungtin/Demo26Page.dart';
import 'package:flutterdarttrungtin/Demo27Page.dart';
import 'package:flutterdarttrungtin/Demo28Page.dart';
import 'package:flutterdarttrungtin/Demo29PageDialog.dart';
import 'package:flutterdarttrungtin/Demo2Page.dart';
import 'package:flutterdarttrungtin/Demo31Page.dart';
import 'package:flutterdarttrungtin/Demo32Page.dart';
import 'package:flutterdarttrungtin/Demo33Page.dart';
import 'package:flutterdarttrungtin/Demo3Page.dart';
import 'package:flutterdarttrungtin/Demo4Page.dart';
import 'package:flutterdarttrungtin/Demo5Page.dart';
import 'package:flutterdarttrungtin/Demo6Page.dart';
import 'package:flutterdarttrungtin/Demo7Page.dart';
import 'package:flutterdarttrungtin/Demo8Page.dart';
import 'package:flutterdarttrungtin/Demo9Page.dart';
import 'package:flutterdarttrungtin/LoginPage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Demo33Page(),
      debugShowCheckedModeBanner: false, //Bỏ icon Debug
    );
  }
}

