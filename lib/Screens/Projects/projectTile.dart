import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/Screens/Projects/projectTypeLogo.dart';
import 'package:portfolio2/models/project.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/maxWidth.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectTile extends StatelessWidget {
  final Project project;
  const ProjectTile({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: getMaxWidth(context),
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      padding: EdgeInsets.fromLTRB(30, 30, 0, 30),
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
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      '${project.iconPath}',
                      height: 100,
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        project.name,
                        style: TextStyle(
                            color: project.mainColor,
                            fontSize: 55,
                            fontFamily: 'QuickSand'),
                      ),
                      Text(
                        project.subTitle,
                        style: TextStyle(
                            color: project.mainColor,
                            fontSize: 25,
                            fontFamily: 'QuickSand'),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                '${project.dates.startDate.year} - ${project.dates.endDate?.year.toString() ?? 'Today'}',
                style: TextStyle(
                    color: CustomColors(context: context).secondaryTextColor,
                    fontSize: 25,
                    fontFamily: 'QuickSand'),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: getMaxWidth(context) - 220 - 50,
                child: Text(
                  project.description,
                  style: TextStyle(
                      color: CustomColors(context: context).secondaryTextColor,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'QuickSand'),
                  textAlign: TextAlign.justify,
                ),
              ),
              Spacer(),
              Spacer(),
              Row(
                children: [
                  if (project.website != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: TextButton.icon(
                          onPressed: () {
                            launchUrlString(project.website!);
                          },
                          icon: Icon(
                            Icons.language,
                            color: project.mainColor,
                          ),
                          label: Text(
                            'Link To Web app',
                            style: TextStyle(color: project.mainColor),
                          )),
                    )
                ],
              )
            ],
          ),
          Positioned(
            right: 220,
            child: project.projectType == ProjectType.personal
                ? PersonalWorkLogo()
                : ClientWorkLogo(),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              project.appPreviewPath,
              alignment: Alignment.centerRight,
            ),
          )
        ],
      ),
    );
  }
}
