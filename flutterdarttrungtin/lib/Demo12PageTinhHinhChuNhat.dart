import 'package:flutter/material.dart';
import 'dart:math';

class TinhHinhChuNhat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
      return TinhHinhChuNhatState();
  }
}

class TinhHinhChuNhatState extends State<TinhHinhChuNhat> {
  //Dùng để quản lý dữ liệu nhập liệu cho ô nhập văn bản đầu tiên
  var sideLengthController1 = TextEditingController();
  var sideLengthController2 = TextEditingController();
  //Cách nhập luôn
  // var sideLengthController2 = TextEditingController(text: "Điền chiều dài");

  //Tạo biến để lưu giá trị, khởi tạo đầu bằng 0
  String areResult = "";
  String perimeResult = "";

  @override
  Widget build(BuildContext context) {
      return Scaffold( // Cấu trúc layout cho ứng dụng
          appBar: AppBar( //Tiêu đề
            title: const Text(
              "Rectengle Calculator",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            backgroundColor: Colors.blue,
          ),
        body: Padding( //Tạo ra khoảng trống xung quanh
            padding: EdgeInsets.all(10), //tạo ra khoảng trống là 10 pixel
          child: Center(
            child: Column(
              children: [
                TextFormField( //Ô nhập văn bản
                  /*
                  //controller: Mỗi ô nhập được kết nối với
                  //một TextEditingController để quản lý dữ liệu nhập liệu.
                   */
                  controller: sideLengthController1,
                  decoration: const InputDecoration( //Cung cấp gợi ý(hint) cho người dùng để hướng dẫn họ nhập liệu
                    hintText: "Điền chiều dài",
                  ),
                  keyboardType: TextInputType.number, //Xác định loại bàn phím
                ),
                TextFormField(
                  controller: sideLengthController2,
                  decoration: const InputDecoration(
                    hintText: "Điền chiều rộng",
                  ),
                  keyboardType: TextInputType.number,
                ),
                Row(
                  children: [
                    Expanded( //Expanded: Widget này mở rộng kích thước của nút để nó chiếm hết không gian ngang trong hàng.
                    child: ElevatedButton(
                            onPressed: () => calculator(),
                            child: const Text(
                              "Calculator",
                              style: TextStyle(
                                color: Colors.pink,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                              ),
                            )
                        )
                    )
                  ],
                ),
                Text(
                  "Area: ${areResult}",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "Perimeter: ${perimeResult}",
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ),
        ),
      );
  }

  void calculator() {
    //Lấy giá trị để chuyển đổi giá trị nhập từ ô nhập văn bản thành số kiểu double.
    double sideLength1 = double.tryParse(sideLengthController1.text) ?? 0;
    double sideLength2 = double.tryParse(sideLengthController2.text) ?? 0;

    //Tính diện tích và chu vi
    double area = sideLength1 * sideLength2;
    double perimetor = (sideLength1+sideLength2)/2.0;

    /*
    Dùng setState() để cập nhật giá trị của biến areResult và
    perimeResult để hiển thị kết quả tính toán lên giao diện người dùng.
    toStringAsFixed(2) được sử dụng để làm tròn kết quả đến 2 chữ số thập phân
    trước khi hiển thị.
     */
    setState(() {
      areResult = area.toStringAsFixed(2);
      perimeResult = perimetor.toStringAsFixed(2);
    });
  }
}