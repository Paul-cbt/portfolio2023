import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio2/Screens/Projects/linkButton.dart';
import 'package:portfolio2/models/project.dart';

class ProjectTileLinkRow extends StatelessWidget {
  const ProjectTileLinkRow({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ProjectTileLinkButton(
            icon: Icon(
              Icons.language,
              color: project.textColor(context),
            ),
            text: Text(
              'Link To Web app',
              style: TextStyle(color: project.textColor(context)),
            ),
            url: project.website),
        ProjectTileLinkButton(
            icon: SvgPicture.asset(
              'github.svg',
              color: project.textColor(context),
              height: 20,
            ),
            text: Text(
              'Source Code',
              style: TextStyle(color: project.textColor(context)),
            ),
            url: project.github),
        ProjectTileLinkButton(
            icon: SvgPicture.asset(
              'apple.svg',
              color: project.textColor(context),
              height: 22,
            ),
            text: Text(
              'App Store',
              style: TextStyle(color: project.textColor(context)),
            ),
            url: project.iosDownloadLink),
        ProjectTileLinkButton(
            icon: SvgPicture.asset(
              'android.svg',
              color: project.textColor(context),
              height: 22,
            ),
            text: Text(
              'Google Play',
              style: TextStyle(color: project.textColor(context)),
            ),
            url: project.androidDownloadLink)
      ],
    );
  }
}
