import 'package:bmi_calc/screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navigating extends Navigator {
  Navigating({
    BuildContext? context,
    Widget? screen,
  }) {
    Navigator.push(
      context!,
      MaterialPageRoute(
        builder: (context) => screen!,
      ),
    );
  }
}
