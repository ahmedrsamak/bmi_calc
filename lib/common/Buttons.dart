import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget imageButton({
  required String title,
  required String imageDir,
  required void Function()? onTap,
  bool isPressed = false,
}) {
  return IntrinsicWidth(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GestureDetector(
          onTap: () {
            onTap!();
          },
          child: Container(
            color: isPressed == true
                ? Colors.blue.withOpacity(0.5)
                : Colors.blue.withOpacity(0),
            child: Image.asset(
              imageDir,
              height: 300,
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

// Widget container Button
Widget containerIcon({
  String textUp = "",
  String textDown = "",
  required void Function() onTapInc,
  required void Function() onTapDec,
  required Object heroKeyDec,
  required Object heroKeyInc,
}) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.blue, width: 3),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textUp, style: TextStyle(fontSize: textUp == "" ? 0 : 30)),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton.small(
                heroTag: heroKeyDec,
                backgroundColor: Colors.blue,
                onPressed: () {
                  onTapDec();
                },
                child: Icon(
                  Icons.remove,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(textDown,
                    style: TextStyle(fontSize: textDown == "" ? 0 : 30)),
              ),
              FloatingActionButton.small(
                heroTag: heroKeyInc,
                backgroundColor: Colors.blue,
                onPressed: onTapInc,
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
