import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio2/Screens/Projects/linkButton.dart';
import 'package:portfolio2/Screens/Projects/projectTileDateDisplay.dart';
import 'package:portfolio2/Screens/Projects/projectTileLinkRow.dart';
import 'package:portfolio2/Screens/Projects/projectTileTitleRow.dart';
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
      constraints: BoxConstraints(minHeight: 400),
      width: getMaxWidth(context) - (isBigSize(context) ? 0 : 40),
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width >= 1030 ? 0 : 20,
          vertical: 20),
      padding: EdgeInsets.fromLTRB(30, 30, isBigSize(context) ? 0 : 30, 30),
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
      child: getMaxWidth(context) > 900
          ? Stack(
              fit: StackFit.loose,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProjectTileTitleRow(project: project),
                    const SizedBox(height: 10),
                    ProjectTileDateDisplay(
                      projectDate: project.dates,
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: getMaxWidth(context) -
                          220 -
                          50 -
                          (project.alignOnLogoStart ? 130 : 0) -
                          (project.isWideImage ? 280 : 0),
                      child: Text(
                        project.description,
                        style: TextStyle(
                            color: CustomColors(context: context)
                                .secondaryTextColor,
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'QuickSand'),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
                Positioned(
                    bottom: 0, child: ProjectTileLinkRow(project: project)),
                Positioned(
                  right: 220,
                  child: project.projectType == ProjectType.personal
                      ? PersonalWorkLogo()
                      : ClientWorkLogo(),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding:
                        EdgeInsets.only(right: project.rightPadding ? 30 : 0),
                    child: SizedBox(
                      height: 340 +
                          (project.rendersAreFromBeta || project.isWideImage
                              ? 50
                              : 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (project.isWideImage) const SizedBox(height: 50),
                          Image.asset(
                            project.appPreviewPath,
                            height: 340 * project.imageHeightFactor,
                            alignment: Alignment.centerRight,
                          ),
                          if (project.rendersAreFromBeta)
                            ProjectTileBetaWarning()
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                ProjectTileTitleRow(project: project),
                const SizedBox(height: 10),
                ProjectTileDateDisplay(
                  projectDate: project.dates,
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: getMaxWidth(context) - 60,
                  child: Text(
                    project.description,
                    style: TextStyle(
                        color:
                            CustomColors(context: context).secondaryTextColor,
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'QuickSand'),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Image.asset(
                    project.appPreviewPath,
                    height: 200 * project.imageHeightFactor,
                    alignment: Alignment.centerRight,
                  ),
                ),
                if (project.rendersAreFromBeta)
                  Center(child: ProjectTileBetaWarning()),
                const SizedBox(height: 10),
                ProjectTileLinkRow(project: project)
              ],
            ),
    );
  }
}

class ProjectTileBetaWarning extends StatelessWidget {
  const ProjectTileBetaWarning({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.info,
          color: CustomColors(context: context).secondaryTextColor,
        ),
        const SizedBox(width: 10),
        Text(
          'Image Shown are still in beta',
          style: TextStyle(
              color: CustomColors(context: context).secondaryTextColor,
              fontFamily: "QuickSand"),
        )
      ],
    );
  }
}
