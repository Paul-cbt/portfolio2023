import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/constants.dart';
import 'package:portfolio2/shared/maxWidth.dart';

class AboutMeText extends StatelessWidget {
  const AboutMeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
              children: aboutMeTextSpans(
                  getMaxWidth(context) > 400 ? fontSize : smallFontSize,
                  context))),
    );
  }
}

List<InlineSpan> aboutMeTextSpans(double fontSize, BuildContext context) {
  return [
    TextSpan(
      text: "I'm Paul, a 20 years old developer from ",
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColors(context: context).textColor,
        fontFamily: "QuickSand",
      ),
    ),
    TextSpan(
      text: "Munich, Germany.",
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColors(context: context).aboutMeAccent,
        fontWeight: FontWeight.bold,
        fontFamily: "QuickSandBold",
      ),
    ),
    TextSpan(
      text:
          " I started being exposed to programming at 8 and I loved it ever since!\n",
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColors(context: context).textColor,
        fontFamily: "QuickSand",
      ),
    ),
    TextSpan(
      text: "I have ",
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColors(context: context).textColor,
        fontFamily: "QuickSand",
      ),
    ),
    TextSpan(
      text: "3 years",
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColors(context: context).aboutMeAccent,
        fontWeight: FontWeight.bold,
        fontFamily: "QuickSandBold",
      ),
    ),
    TextSpan(
      text: " of experience working with Flutter. ",
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColors(context: context).textColor,
        fontFamily: "QuickSand",
      ),
    ),
    TextSpan(
      text: "In fact, I developed my first app (OutLearn) when I was 16",
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColors(context: context).textColor,
        fontFamily: "QuickSand",
      ),
    ),
    TextSpan(
      text: " and thanks to my multiple professional projects I've become ",
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColors(context: context).textColor,
        fontFamily: "QuickSand",
      ),
    ),
    TextSpan(
      text: " fluent",
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColors(context: context).aboutMeAccent,
        fontWeight: FontWeight.bold,
        fontFamily: "QuickSandBold",
      ),
    ),
    TextSpan(
      text: " in it and learned to work well with",
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColors(context: context).textColor,
        fontFamily: "QuickSand",
      ),
    ),
    TextSpan(
      text: " surrounding technologies",
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColors(context: context).aboutMeAccent,
        fontWeight: FontWeight.bold,
        fontFamily: "QuickSandBold",
      ),
    ),
    TextSpan(
      text: " like firebase, node.js, swift or various apis",
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColors(context: context).textColor,
        fontFamily: "QuickSand",
      ),
    ),
    TextSpan(
      text: "\nI also express my creativity with videography and music :)",
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColors(context: context).textColor,
        fontFamily: "QuickSand",
      ),
    ),
  ];
}
