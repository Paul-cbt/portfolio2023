import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/Screens/Projects/fullProjectList.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/Projects/projectList.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HorizontalNavbar extends StatefulWidget {
  final ScrollController scrollController;
  const HorizontalNavbar({super.key, required this.scrollController});

  @override
  State<HorizontalNavbar> createState() => _HorizontalNavbarState();
}

class _HorizontalNavbarState extends State<HorizontalNavbar> {
  bool backGroundColorIsEnabled = false;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //listening to the appPage scroll controller,
      //on the first page, color should be white and background transparent,
      //but after, text color needs to be darker and
      //a translucid background color to make it look better

      widget.scrollController.addListener(() {
        if (widget.scrollController.offset >
            MediaQuery.of(context).size.height - 50) {
          setState(() {
            backGroundColorIsEnabled = true;
          });
        } else if (backGroundColorIsEnabled) {
          setState(() {
            backGroundColorIsEnabled = false;
          });
        }
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 50,
      duration: const Duration(milliseconds: 400),
      decoration: BoxDecoration(
          color: backGroundColorIsEnabled
              ? Theme.of(context).scaffoldBackgroundColor.withOpacity(0.8)
              : Theme.of(context).scaffoldBackgroundColor.withOpacity(0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(5),
            onTap: () {
              Navigator.of(context).push(CupertinoPageRoute(
                builder: (context) => const FullProjectList(),
              ));
            },
            child: Text(
              "Project Gallery",
              style: TextStyle(
                  fontFamily: 'QuickSandSemi',
                  fontSize: 16,
                  color: CustomColors(context: context).deepBlue),
            ),
          ),
          const SizedBox(width: 20),
          InkWell(
            borderRadius: BorderRadius.circular(5),
            onTap: () {
              launchUrlString('https://github.com/Paul-cbt');
            },
            child: Text(
              "GitHub",
              style: TextStyle(
                  fontFamily: 'QuickSandSemi',
                  fontSize: 16,
                  color: CustomColors(context: context).deepBlue),
            ),
          ),
          const SizedBox(width: 20),
          InkWell(
            borderRadius: BorderRadius.circular(5),
            onTap: () {
              widget.scrollController.animateTo(
                  widget.scrollController.position.maxScrollExtent,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut);
            },
            child: Text(
              "Contact",
              style: TextStyle(
                  fontFamily: 'QuickSandSemi',
                  fontSize: 16,
                  color: CustomColors(context: context).deepBlue),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
