import 'package:flutter/material.dart';
import 'dart:math';


class SquarePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SquarePageState();
  }
}

class SquarePageState extends State<SquarePage> {
  var sideLengthController = TextEditingController();
  String areaResult = "";
  String perimeterResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Square Calculator",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              TextFormField(
                controller: sideLengthController,
                decoration: const InputDecoration(
                  hintText: "Side Length",
                ),
                keyboardType: TextInputType.number,
              ),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () => calculate(),
                          child: const Text("Calculate",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.pink),
                          )
                      )
                  )
                ],
              ),
              Text(
                "Area: ${areaResult}",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "Perimeter: ${perimeterResult}",
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }

  void calculate() {
    double sideLength = double.tryParse(sideLengthController.text) ?? 0;
    double area = sideLength * sideLength * pi;
    double perimeter = 2* pi * sideLength;

    setState(() {
      areaResult = area.toStringAsFixed(2);
      perimeterResult = perimeter.toStringAsFixed(2);
    });
  }
}
