import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/maxWidth.dart';

class HomePageText extends StatelessWidget {
  const HomePageText({super.key});

  @override
  Widget build(BuildContext context) {
    double fontsize = isBigSize(context) ? 40 : 30;
    return RichText(
        text: TextSpan(
            text: "Hi,\n",
            style: TextStyle(
              fontSize: fontsize * 5 / 4,
              fontFamily: "QuickSand",
              color: CustomColors(context: context).deepBlue,
            ),
            children: [
          TextSpan(
            text: "I'm ",
            style: TextStyle(
              fontSize: fontsize * 5 / 4,
              fontFamily: "QuickSand",
            ),
          ),
          TextSpan(
            text: "Paul",
            style: TextStyle(
              fontSize: fontsize * 5 / 4,
              color: CustomColors(context: context).homePageTextColor,
              fontFamily: "QuickSand",
            ),
          ),
          TextSpan(
            text: ",\n",
            style: TextStyle(
              fontSize: fontsize,
              fontFamily: "QuickSand",
            ),
          ),
          TextSpan(
            text: "a ",
            style: TextStyle(
              fontSize: fontsize,
              fontFamily: "QuickSand",
            ),
          ),
          TextSpan(
            text: "mobile",
            style: TextStyle(
              fontSize: fontsize,
              color: CustomColors(context: context).homePageTextColor,
              fontFamily: "QuickSand",
            ),
          ),
          TextSpan(
            text: " and ",
            style: TextStyle(
              fontSize: fontsize,
              fontFamily: "QuickSand",
            ),
          ),
          TextSpan(
            text: "Web",
            style: TextStyle(
              fontSize: fontsize,
              color: CustomColors(context: context).homePageTextColor,
              fontFamily: "QuickSand",
            ),
          ),
          TextSpan(
            text: " dev",
            style: TextStyle(
              fontSize: fontsize,
              fontFamily: "QuickSand",
            ),
          )
        ]));
  }
}
