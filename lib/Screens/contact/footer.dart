import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/maxWidth.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        margin: EdgeInsets.only(bottom: isBigSize(context) ? 0 : 20),
        width: getMaxWidth(context),
        child: Stack(
          children: [
            Align(
              alignment: isBigSize(context)
                  ? Alignment.centerLeft
                  : Alignment.bottomLeft,
              child: Text(
                "Paul Caubet, 2023",
                style: TextStyle(
                    color: CustomColors(context: context).deepBlue,
                    fontSize: 18,
                    fontFamily: 'QuickSand'),
              ),
            ),
            Align(
              alignment:
                  isBigSize(context) ? Alignment.center : Alignment.topCenter,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      launchUrlString('https://www.instagram.com/cpaul08');
                    },
                    child: HoverAnimatedContainer(
                      hoverMargin: EdgeInsets.all(0),
                      width: 50,
                      height: 50,
                      hoverHeight: 60,
                      hoverWidth: 60,
                      hoveraAlignment: Alignment.center,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      child: SvgPicture.asset(
                        'insta.svg',
                        color: CustomColors(context: context).deepBlue,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      launchUrlString('mailto:dev@paulcaubet.com');
                    },
                    child: HoverAnimatedContainer(
                      hoverMargin: EdgeInsets.all(0),
                      width: 50,
                      height: 50,
                      hoverHeight: 60,
                      hoverWidth: 60,
                      hoveraAlignment: Alignment.center,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      child: SvgPicture.asset(
                        'email.svg',
                        color: CustomColors(context: context).deepBlue,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      launchUrlString('https://github.com/Paul-cbt');
                    },
                    child: HoverAnimatedContainer(
                      hoverMargin: EdgeInsets.all(0),
                      width: 50,
                      height: 50,
                      hoverHeight: 60,
                      hoverWidth: 60,
                      hoveraAlignment: Alignment.center,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      child: SvgPicture.asset(
                        'github.svg',
                        color: CustomColors(context: context).deepBlue,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: isBigSize(context)
                  ? Alignment.centerRight
                  : Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  launchUrlString('https://github.com/Paul-cbt/portfolio2023');
                },
                child: HoverAnimatedContainer(
                  hoverMargin: EdgeInsets.all(0),
                  width: 100,
                  height: 30,
                  hoverHeight: 40,
                  hoverWidth: 110,
                  child: FittedBox(
                    //text will size to parent
                    child: Text(
                      "Source Code",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: CustomColors(context: context).deepBlue,
                          fontSize: 16,
                          fontFamily: 'QuickSand'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
