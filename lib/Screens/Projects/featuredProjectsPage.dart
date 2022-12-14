import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/Screens/Projects/fullProjectList.dart';
import 'package:portfolio2/Screens/Projects/projectTile.dart';
import 'package:portfolio2/Screens/Projects/seeFullProjectListButton.dart';
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
              fontSize: isBigSize(context) ? 70 : 30,
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
        SeeFulProjectListButton()
      ],
    );
  }
}
