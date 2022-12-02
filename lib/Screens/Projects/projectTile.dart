import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/models/project.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/maxWidth.dart';

class ProjectTile extends StatelessWidget {
  final Project project;
  const ProjectTile({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: getMaxWidth(context),
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color:
                    CustomColors(context: context).shadowColor.withOpacity(0.2),
                blurRadius: 30,
                spreadRadius: 5,
                offset: Offset(10, 10))
          ],
          color: CustomColors(context: context).projectTileColor,
          borderRadius: BorderRadius.circular(30)),
    );
  }
}
