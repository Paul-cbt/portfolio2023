import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/maxWidth.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: getMaxWidth(context),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Paul Caubet, 2023",
                style: TextStyle(
                    color: CustomColors(context: context).deepBlue,
                    fontSize: 18,
                    fontFamily: 'QuickSand'),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  HoverAnimatedContainer(
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
                  HoverAnimatedContainer(
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
                  HoverAnimatedContainer(
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
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
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
          ],
        ));
  }
}
