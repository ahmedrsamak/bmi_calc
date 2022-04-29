import 'package:bmi_calc/common/Buttons.dart';
import 'package:bmi_calc/common/Custom Slider.dart';
import 'package:bmi_calc/common/others.dart';
import 'package:bmi_calc/screens/ResultsScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 100;
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
          title: const Text(
            "BMI Calculator",
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
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
                          pos: height,
                          titleDown: height.round().toString(),
                          titleUp: "Height",
                          onChange: (value) {
                            height = value;
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
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Container(height: 2, color: Colors.blue),
              ),
              const SizedBox(height: 20),
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
                            },
                            heroKeyInc: 1,
                            heroKeyDec: 2),
                        flex: 10),
                    const Spacer(flex: 1),
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
                            },
                            heroKeyInc: 3,
                            heroKeyDec: 4),
                        flex: 10),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => ResultsScreen(
                      //         height: height,
                      //         ismale: ismale,
                      //         age: age,
                      //         weight: weight),
                      //   ),
                      // );
                      Navigating(
                        context: context,
                        screen: ResultsScreen(
                          weight: weight,
                          height: height,
                          age: age,
                        ),
                      );
                    },
                    child: const Text(
                      "Calculate",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
