import 'package:bmi_calc/common/Buttons.dart';
import 'package:bmi_calc/common/Custom Slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double currentPos = 100;
  bool ismale = true;
  int age = 8;
  int weight = 50;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 35,
          title: Text(
            "BMI Calclutor",
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 6,
                      child: imageButton(
                        imageDir: "assets/images/male.png",
                        onTap: () {
                          ismale = true;
                          setState(() {});
                        },
                        isPressed: ismale,
                        title: "male",
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: mySlider(
                          pos: currentPos,
                          titleDown: currentPos.round().toString(),
                          titleUp: "Height",
                          onChange: (value) {
                            currentPos = value;
                            setState(() {});
                          }),
                    ),
                    Expanded(
                      flex: 6,
                      child: imageButton(
                        imageDir: "assets/images/female.png",
                        onTap: () {
                          ismale = false;
                          setState(() {});
                        },
                        isPressed: !ismale,
                        title: "female",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Container(height: 2, color: Colors.blue),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: containerIcon(
                            textUp: "AGE",
                            textDown: age.toString(),
                            onTapInc: () {
                              age++;
                              setState(() {});
                            },
                            onTapDec: () {
                              age--;
                              setState(() {});
                            }),
                        flex: 10),
                    Spacer(flex: 1),
                    Expanded(
                        child: containerIcon(
                            textUp: "WEIGHT",
                            textDown: weight.toString(),
                            onTapInc: () {
                              weight++;
                              setState(() {});
                            },
                            onTapDec: () {
                              weight--;
                              setState(() {});
                            }),
                        flex: 10),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Calclute",
                        style: TextStyle(fontSize: 30),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
