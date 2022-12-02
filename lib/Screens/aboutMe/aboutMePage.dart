import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/Screens/aboutMe/aboutMeImage.dart';
import 'package:portfolio2/Screens/aboutMe/aboutMeText.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/maxWidth.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "About Me",
            style: TextStyle(
                fontSize: 70,
                color: CustomColors(context: context).deepBlue,
                fontFamily: "QuickSandSemi",
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 100),
          SizedBox(
              width: getMaxWidth(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: AboutMeText(),
                  ),
                  const SizedBox(width: 50),
                  AboutMeImage()
                ],
              ))
        ],
      ),
    );
  }
}
