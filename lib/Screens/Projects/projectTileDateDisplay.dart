import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/models/project.dart';
import 'package:portfolio2/serices/theme.dart';

class ProjectTileDateDisplay extends StatelessWidget {
  final ProjectDate projectDate;
  const ProjectTileDateDisplay({super.key, required this.projectDate});

  @override
  Widget build(BuildContext context) {
    bool isDifferent =
        (projectDate.startDate.year != projectDate.endDate?.year) ||
            projectDate.endDate == null;
    return Text(
      isDifferent
          ? '${projectDate.startDate.year} - ${projectDate.endDate?.year.toString() ?? 'Today'}'
          : projectDate.startDate.year.toString(),
      style: TextStyle(
          color: CustomColors(context: context).secondaryTextColor,
          fontSize: 25,
          fontFamily: 'QuickSand'),
    );
  }
}
