import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/Screens/Projects/fullProjectList.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/maxWidth.dart';

class SeeFulProjectListButton extends StatefulWidget {
  const SeeFulProjectListButton({super.key});

  @override
  State<SeeFulProjectListButton> createState() =>
      _SeeFulProjectListButtonState();
}

class _SeeFulProjectListButtonState extends State<SeeFulProjectListButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getMaxWidth(context) - (isBigSize(context) ? 0 : 40),
      margin: EdgeInsets.symmetric(
          horizontal:
              MediaQuery.of(context).size.width > getMaxWidth(context) + 30
                  ? 0
                  : 20,
          vertical: 10),
      padding: EdgeInsets.fromLTRB(30, 5, isBigSize(context) ? 0 : 30, 5),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: CustomColors(context: context)
                    .shadowColor
                    .withOpacity(0.15),
                blurRadius: 20,
                spreadRadius: 5,
                offset: Offset(5, 5))
          ],
          color: CustomColors(context: context).deepBlue,
          borderRadius: BorderRadius.circular(30)),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(CupertinoPageRoute(
            builder: (context) => const FullProjectList(),
          ));
        },
        borderRadius: BorderRadius.circular(30),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "See Full Project List",
                  style: TextStyle(
                      fontFamily: "QuickSandSemi",
                      fontSize: isBigSize(context) ? 30 : 18,
                      fontStyle: FontStyle.italic,
                      color: CustomColors(context: context).homePageTextColor),
                ),
                const SizedBox(width: 5),
                Icon(
                  Icons.chevron_right_rounded,
                  size: isBigSize(context) ? 40 : 22,
                  color: CustomColors(context: context).homePageTextColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
