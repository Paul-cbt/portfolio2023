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
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width > 1030 ? 0 : 30),
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
          SizedBox(height: getMaxWidth(context) > 900 ? 100 : 50),
          SizedBox(
              width: getMaxWidth(context),
              child: getMaxWidth(context) > 900
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Expanded(
                          child: AboutMeText(),
                        ),
                        SizedBox(width: 50),
                        AboutMeImage()
                      ],
                    )
                  : Column(
                      children: const [
                        AboutMeImage(),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                          child: AboutMeText(),
                        )
                      ],
                    ))
        ],
      ),
    );
  }
}
