import 'dart:math';

import 'package:bmi_calc/common/Labels.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatefulWidget {
  final double? height;
  final bool? ismale;
  final int? age;
  final int? weight;
  const ResultsScreen(
      {Key? key,
      required this.weight,
      this.age,
      this.ismale,
      required this.height})
      : super(key: key);

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    double bmiResult = (widget.weight! / (pow((widget.height! / 100), 2)));
    String? bmiRef() {
      if (bmiResult <= 18.5) {
        return "Under weight";
      } else if (bmiResult > 18.5 && bmiResult <= 24.9) {
        return "Healthy weight";
      } else if (bmiResult > 25 && bmiResult <= 29.9) {
        return "Over weight";
      } else if (bmiResult > 30 && bmiResult <= 39.9) {
        return "Obese";
      } else {
        return "Morbidly obese";
      }
    }

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: myText("Result"),
      ),
      body: SafeArea(
        child: Center(
          child: IntrinsicHeight(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  myText("Age is: ${widget.age}"),
                  myText("Weight is: ${widget.weight}"),
                  widget.ismale == true
                      ? myText("you are male")
                      : myText("you are female"),
                  myText("Your BMI is ${bmiResult.round()}"),
                  myText("Based on Your BMI you are"),
                  myText(bmiRef()!),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
