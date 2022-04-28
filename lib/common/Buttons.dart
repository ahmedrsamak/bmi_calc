import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget imageButton({
  required title,
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
              height: 200,
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        )
      ],
    ),
  );
}
