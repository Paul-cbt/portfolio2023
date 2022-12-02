import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/serices/theme.dart';

class HomePageText extends StatelessWidget {
  const HomePageText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "Hello,\n",
            style: TextStyle(
              fontSize: 50,
              fontFamily: "QuickSand",
              color: CustomColors(context: context).deepBlue,
            ),
            children: [
          TextSpan(
            text: "I'm ",
            style: TextStyle(
              fontSize: 50,
              fontFamily: "QuickSand",
            ),
          ),
          TextSpan(
            text: "Paul",
            style: TextStyle(
              fontSize: 50,
              color: CustomColors(context: context).homePageTextColor,
              fontFamily: "QuickSand",
            ),
          ),
          TextSpan(
            text: ",\n",
            style: TextStyle(
              fontSize: 50,
              fontFamily: "QuickSand",
            ),
          ),
          TextSpan(
            text: "a ",
            style: TextStyle(
              fontSize: 40,
              fontFamily: "QuickSand",
            ),
          ),
          TextSpan(
            text: "mobile",
            style: TextStyle(
              fontSize: 40,
              color: CustomColors(context: context).homePageTextColor,
              fontFamily: "QuickSand",
            ),
          ),
          TextSpan(
            text: " and ",
            style: TextStyle(
              fontSize: 40,
              fontFamily: "QuickSand",
            ),
          ),
          TextSpan(
            text: "Web",
            style: TextStyle(
              fontSize: 40,
              color: CustomColors(context: context).homePageTextColor,
              fontFamily: "QuickSand",
            ),
          ),
          TextSpan(
            text: " dev",
            style: TextStyle(
              fontSize: 40,
              fontFamily: "QuickSand",
            ),
          )
        ]));
  }
}
