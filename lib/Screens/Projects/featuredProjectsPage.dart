import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/Screens/Projects/fullProjectList.dart';
import 'package:portfolio2/Screens/Projects/projectTile.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/Projects/projectList.dart';
import 'package:portfolio2/shared/maxWidth.dart';

class LatestProjectsPage extends StatelessWidget {
  const LatestProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Featured Projects",
          style: TextStyle(
              fontSize: isBigSize(context) ? 70 : 40,
              color: CustomColors(context: context).deepBlue,
              fontFamily: "QuickSandSemi",
              fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: isBigSize(context) ? 60 : 30),
        SizedBox(
          width: getMaxWidth(context),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return ProjectTile(project: projectList[index]);
            },
          ),
        ),
        SizedBox(
          width: getMaxWidth(context),
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) => const FullProjectList(),
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_right,
                          color: CustomColors(context: context).deepBlue,
                        ),
                        Text(
                          "See Full Project List",
                          style: TextStyle(
                              fontFamily: "QuickSand",
                              color: CustomColors(context: context).deepBlue),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
