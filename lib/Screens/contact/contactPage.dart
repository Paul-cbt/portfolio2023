import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio2/Screens/contact/contactImage.dart';
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
      height: isBigSize(context) ? MediaQuery.of(context).size.height : null,
      width: MediaQuery.of(context).size.width,
      padding: getMaxWidth(context) < 1000
          ? EdgeInsets.symmetric(horizontal: 30)
          : null,
      child: isBigSize(context)
          ? Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                Text(
                  "Contact",
                  style: TextStyle(
                      fontSize: 70,
                      color: CustomColors(context: context).deepBlue,
                      fontFamily: "QuickSandSemi",
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    width: getMaxWidth(context),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ContactImage(),
                        const SizedBox(width: 50),
                        Expanded(
                          child: ContactPageTextAndButton(),
                        )
                      ],
                    )),
                SizedBox(height: MediaQuery.of(context).size.height / 10),
                SafeArea(child: Footer()),
                const SizedBox(height: 30),
              ],
            )
          : Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                Text(
                  "Contact",
                  style: TextStyle(
                      fontSize: 70,
                      color: CustomColors(context: context).deepBlue,
                      fontFamily: "QuickSandSemi",
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                SizedBox(
                  width: getMaxWidth(context),
                  child: Column(
                    children: [
                      ContactImage(),
                      const SizedBox(height: 50),
                      ContactPageTextAndButton()
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 50),
                SafeArea(child: Footer()),
                const SizedBox(height: 30),
              ],
            ),
    );
  }
}

class ContactPageTextAndButton extends StatelessWidget {
  const ContactPageTextAndButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (isBigSize(context)) Spacer(),
        RichText(
            textAlign: TextAlign.end,
            text: TextSpan(children: contactTextSpans(fontSize, context))),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: TextButton.icon(
                  onPressed: () {
                    launchUrlString("assets/cv.pdf");
                  },
                  icon: Icon(
                    Icons.download,
                    color: CustomColors(context: context).deepBlue,
                  ),
                  label: Text(
                    'Resume',
                    style: TextStyle(
                        color: CustomColors(context: context).deepBlue,
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
                width: isBigSize(context) ? 200 : 140,
                height: 50,
                text: 'EMAIL',
                animatedOn: AnimatedOn.onHover,
                // borderColor:
                //     CustomColors(context: context).deepBlue,
                backgroundColor: CustomColors(context: context).deepBlue,
                selectedBackgroundColor:
                    CustomColors(context: context).homePageTextColor,
                selectedTextColor: CustomColors(context: context).deepBlue,
                transitionType: TransitionType.LEFT_TOP_ROUNDER,
                textStyle: TextStyle(
                    fontSize: isBigSize(context) ? 28 : 22,
                    letterSpacing: 5,
                    color: CustomColors(context: context).homePageTextColor,
                    fontWeight: FontWeight.w300),
              ),
            ),
            const SizedBox(height: 150),
          ],
        )
      ],
    );
  }
}
