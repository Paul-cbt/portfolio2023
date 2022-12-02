import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio2/Screens/contact/contactTextSpans.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/constants.dart';
import 'package:portfolio2/shared/maxWidth.dart';

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
            width: getMaxWidth(context),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    children: [
                      RichText(
                          text: TextSpan(
                              children: contactTextSpans(fontSize, context))),
                    ],
                  ),
                )
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
