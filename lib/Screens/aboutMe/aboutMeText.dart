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
      text: "I'm Paul, a 18 years old developer from ",
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
        fontFamily: "QuickSand",
      ),
    ),
    TextSpan(
      text: " I have ",
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColors(context: context).textColor,
        fontFamily: "QuickSand",
      ),
    ),
    TextSpan(
      text: "2.5 years",
      style: TextStyle(
        fontSize: fontSize,
        color: CustomColors(context: context).aboutMeAccent,
        fontFamily: "QuickSand",
      ),
    ),
    TextSpan(
      text: " of experience working with Flutter.\n",
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
        fontFamily: "QuickSand",
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
        fontFamily: "QuickSand",
      ),
    )
  ];
}
