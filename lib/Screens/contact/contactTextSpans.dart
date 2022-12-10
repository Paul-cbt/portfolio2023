import 'package:flutter/material.dart';
import 'package:portfolio2/serices/theme.dart';

List<InlineSpan> contactTextSpans(double fontSize, BuildContext context) {
  return [
    TextSpan(
      text: "You are looking for a",
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColors(context: context).textColor,
        fontFamily: "QuickSand",
      ),
    ),
    TextSpan(
      text: " young & creative",
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColors(context: context).aboutMeAccent,
        fontWeight: FontWeight.bold,
        fontFamily: "QuickSandBold",
      ),
    ),
    TextSpan(
      text: " Flutter dev?\n",
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColors(context: context).textColor,
        fontFamily: "QuickSand",
      ),
    ),
    TextSpan(
      text: "Look no more.\n",
      style: TextStyle(
        fontSize: fontSize + 5,
        color: CustomColors(context: context).textColor,
        fontFamily: "QuickSand",
      ),
    ),
  ];
}
