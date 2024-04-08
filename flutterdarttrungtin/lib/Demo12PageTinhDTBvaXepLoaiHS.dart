import 'package:flutter/material.dart';
import 'dart:math';

class TinhDTBandXepLoaiHS extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
      return TinhDTBandXepLoaiHSState();
  }
}

class TinhDTBandXepLoaiHSState extends State<TinhDTBandXepLoaiHS> {
  var toanController = TextEditingController();
  var lyController = TextEditingController();
  var hoaController = TextEditingController();

  String avarageResult = "";
  String gradeResult = "";

  @override
  Widget build(BuildContext context) {
        return Scaffold(
           appBar: AppBar(
             title: const Text(
               "Tính Điểm Trung Bình",
               style: TextStyle(
                 fontSize: 40,
                 fontWeight: FontWeight.bold,
                 color: Colors.blue,
               ),
             ) ,
             backgroundColor: Colors.yellow,
           ),
          body: Padding(
              padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: [
                  TextFormField(
                    controller: toanController,
                    decoration: const InputDecoration(
                      hintText: "Điểm Toán",
                    ),
                    keyboardType: TextInputType.number,
                  ),

                  TextFormField(
                    controller: lyController,
                    decoration: const InputDecoration(
                      hintText: "Điểm Lý",
                    ),
                    keyboardType: TextInputType.number,
                  ),

                  TextFormField(
                    controller: hoaController,
                    decoration: const InputDecoration(
                      hintText: "Điểm Hóa",
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () => calculator(),
                              child: const Text("Tính Điểm Trung Bình",
                              style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.pink
                              ),
                              )
                          )
                      )
                    ],
                  ),
                Text(
                  "Điểm Trung Bình: ${avarageResult}",
                   style: TextStyle(fontSize: 30),
                ),
                Text(
                  "Xếp Loại: ${gradeResult}",
                   style: TextStyle(fontSize: 30),
                 )
                ],
              ),
            ),
          ),

        );
  }
  void calculator() {
    double toan = double.tryParse(toanController.text) ?? 0;
    double ly = double.tryParse(lyController.text) ?? 0;
    double hoa = double.tryParse(hoaController.text) ?? 0;

    double average = (toan + ly + hoa) / 3;

    String grade;
    if (average >= 8.5) {
      grade = "Giỏi";
    } else if (average >= 6.5) {
      grade = "Khá";
    } else if (average >= 5) {
      grade = "Trung Bình";
    } else {
      grade = "Yếu";
    }

    setState(() {
      avarageResult = average.toStringAsFixed(2);
      gradeResult = grade;
    });
  }
}