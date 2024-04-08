import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(body: MyWidget()),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyWidget extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Container(
    child: Stack(
      children: [
        Image.asset(
          "images/screen3.png", // Thay "your_image.png" bằng tên của hình ảnh thực trong thư mục images của dự án
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Container(
          color: Colors.blue.withOpacity(0), // Màu nền của lớp mờ
        ),
        Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  width: 40 ,
                  height: 40,
                  color: Colors.red,
                ),
                const SizedBox(width: 10,),
                const Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phạm Bích Ngọc', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        Text('Thủ Sỹ, Hưng Yên', style: TextStyle(fontSize: 20,))
                      ],
                    )
                ),
                Container(
                  width: 20,
                  height: 20,
                  color: Colors.pink,
                ),
                const SizedBox(width: 18,),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      color: Colors.blue,
                    ),
                    const Text('20')
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
}
