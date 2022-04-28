import 'package:bmi_calc/common/Buttons.dart';
import 'package:bmi_calc/common/Custom Slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  double currentPos = 100;
  bool ismale = true;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IntrinsicHeight(
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
              mySlider(
                  pos: currentPos,
                  titleDown: currentPos.round().toString(),
                  titleUp: "Height",
                  onChange: (value) {
                    currentPos = value;
                    setState(() {});
                  }),
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
      ),
    );
  }
}
