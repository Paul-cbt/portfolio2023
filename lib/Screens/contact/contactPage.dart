import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio2/Screens/contact/contactTextSpans.dart';
import 'package:portfolio2/Screens/contact/footer.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/constants.dart';
import 'package:portfolio2/shared/maxWidth.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / 10),
          Text(
            "Contact",
            style: TextStyle(
                fontSize: 70,
                color: CustomColors(context: context).deepBlue,
                fontFamily: "QuickSandSemi",
                fontWeight: FontWeight.w400),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 10),
          SizedBox(
            height: 400,
            width: getMaxWidth(context),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: getMaxWidth(context) / 2.5,
                  child: SvgPicture.asset(
                    'young.svg',
                    height: MediaQuery.of(context).size.height / 2.1,
                    width: getMaxWidth(context) / 3,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 50),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Spacer(),
                      RichText(
                          textAlign: TextAlign.end,
                          text: TextSpan(
                              children: contactTextSpans(fontSize, context))),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.download,
                                  color:
                                      CustomColors(context: context).deepBlue,
                                ),
                                label: Text(
                                  'Resume',
                                  style: TextStyle(
                                      color: CustomColors(context: context)
                                          .deepBlue,
                                      fontFamily: "QuickSand",
                                      fontSize: 16),
                                )),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  color: CustomColors(context: context)
                                      .shadowColor
                                      .withOpacity(0.2),
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                  offset: Offset(5, 5))
                            ]),
                            child: AnimatedButton(
                              borderRadius: 5,
                              onPress: () {
                                launchUrlString('mailto:dev@paulcaubet.com');
                              },
                              width: 200,
                              height: 50,
                              text: 'EMAIL',
                              animatedOn: AnimatedOn.onHover,
                              // borderColor:
                              //     CustomColors(context: context).deepBlue,
                              backgroundColor:
                                  CustomColors(context: context).deepBlue,
                              selectedBackgroundColor:
                                  CustomColors(context: context)
                                      .homePageTextColor,
                              selectedTextColor:
                                  CustomColors(context: context).deepBlue,
                              transitionType: TransitionType.LEFT_TOP_ROUNDER,
                              textStyle: TextStyle(
                                  fontSize: 28,
                                  letterSpacing: 5,
                                  color: CustomColors(context: context)
                                      .homePageTextColor,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          const SizedBox(height: 150),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Footer()
        ],
      ),
    );
  }
}
