/*
 Để sử dụng các widget và thành phần giao diện người dùng từ Flutter framework.
 */
import 'package:flutter/material.dart';

class AppWidget {
  /*
   TextStyle được cấu hình để áp dụng cho các trường văn bản (text field) trong ứng dụng
   */
  static TextStyle boldTextFeildStyle() {
    return TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins');
  }

  static TextStyle HeadlineTextFeildStyle() {
    return TextStyle(
        color: Colors.black,
        fontSize: 15.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins');
  }

  static TextStyle LightlineTextFeildStyle() {
    return TextStyle(
        color: Colors.black38,
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins');
  }

  static TextStyle semiBooldTextFeildStyle() {
    return TextStyle(
        color: Colors.black38,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins');
  }
}
