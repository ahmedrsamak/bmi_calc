import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget mySlider(
    {required double pos,
    required void Function(double) onChange,
    String titleDown = "",
    String titleUp = ""}) {
  return Column(
    children: [
      Text(
        titleUp,
        style: TextStyle(fontSize: titleUp == "" ? 0 : 25),
      ),
      RotatedBox(
        quarterTurns: 3,
        child: SliderTheme(
          data: SliderThemeData(
            trackHeight: 8,
            activeTrackColor: Colors.blueGrey,
            inactiveTrackColor: Colors.black,
            overlayColor: Colors.blueGrey,
            thumbColor: Colors.blueGrey,
          ),
          child: Slider(
            onChanged: (value) {
              pos = value;
              onChange(pos);
            },
            value: pos,
            min: 50,
            max: 200,
          ),
        ),
      ),
      Text(
        titleDown,
        style: TextStyle(fontSize: titleDown == "" ? 0 : 25),
      ),
    ],
  );
}
