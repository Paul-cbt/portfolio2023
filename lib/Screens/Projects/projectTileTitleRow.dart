import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio2/models/project.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/maxWidth.dart';

class ProjectTileTitleRow extends StatelessWidget {
  const ProjectTileTitleRow({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getMaxWidth(context) - 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(project.isLogoCircle
                    ? 50
                    : isBigSize(context)
                        ? 20
                        : 10),
                boxShadow: [
                  BoxShadow(
                      color: CustomColors(context: context)
                          .shadowColor
                          .withOpacity(0.2),
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: Offset(3, 3)),
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(isBigSize(context) ? 20 : 10),
              child: CachedNetworkImage(
                imageUrl: "assets/${project.iconPath}",
                height: isBigSize(context) ? 100 : 80,
                width: isBigSize(context) ? 100 : 80,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.name,
                  style: TextStyle(
                      color: project.textColor(context),
                      fontSize: isBigSize(context) ? 55 : 25,
                      fontFamily: 'QuickSand'),
                ),
                Text(
                  project.subTitle,
                  style: TextStyle(
                      color: project.textColor(context),
                      fontSize: isBigSize(context) ? 25 : 20,
                      fontFamily: 'QuickSand'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
