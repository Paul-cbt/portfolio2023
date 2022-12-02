import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
          "Latest Projects",
          style: TextStyle(
              fontSize: 70,
              color: CustomColors(context: context).deepBlue,
              fontFamily: "QuickSandSemi",
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 60),
        SizedBox(
          width: getMaxWidth(context),
          child: ListView.builder(
            shrinkWrap: true,

            physics: const NeverScrollableScrollPhysics(),
            itemCount: projectList
                .length, //to change so that it dynamically takes the 3 last projects
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
                    print('taped');
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
