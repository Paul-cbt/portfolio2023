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
        fontFamily: "QuickSand",
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
      text: " Flutter dev?\n",
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColors(context: context).textColor,
        fontFamily: "QuickSand",
      ),
    ),
  ];
}
