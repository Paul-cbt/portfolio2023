import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/Screens/Projects/projectTypeLogo.dart';
import 'package:portfolio2/models/project.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/maxWidth.dart';

class ProjectTileDateDisplay extends StatelessWidget {
  final ProjectDate projectDate;
  final ProjectType projectType;
  const ProjectTileDateDisplay(
      {super.key, required this.projectDate, required this.projectType});

  @override
  Widget build(BuildContext context) {
    bool isDifferent =
        (projectDate.startDate.year != projectDate.endDate?.year) ||
            projectDate.endDate == null;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
            text: TextSpan(
                text: isDifferent
                    ? '${projectDate.startDate.year} - ${projectDate.endDate?.year.toString() ?? 'Today'}'
                    : projectDate.startDate.year.toString(),
                style: TextStyle(
                    color: CustomColors(context: context).secondaryTextColor,
                    fontSize: 25,
                    fontFamily: 'QuickSand'),
                children: [
              if (!isBigSize(context) &&
                  projectType == ProjectType.professional)
                TextSpan(
                    text: ', Client Work',
                    style: TextStyle(fontStyle: FontStyle.italic))
            ]))
      ],
    );
  }
}
