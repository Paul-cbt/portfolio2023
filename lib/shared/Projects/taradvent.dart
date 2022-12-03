import 'package:flutter/material.dart';
import 'package:portfolio2/models/project.dart';

Project taradvent = Project(
    projectType: ProjectType.personal,
    name: 'Taradvent',
    appPreviewName: 'taradventPreview.png',
    directoryName: 'taradvent',
    iconName: 'icon.png',
    dates:
        ProjectDate(startDate: DateTime(2022, 11), endDate: DateTime(2022, 11)),
    subTitle: 'Advent Calendar App',
    mainColor: Color(0xffAA3A3A),
    secondaryColor: Color(0xffA4B787),
    description: "It is generally considered a very cute idea to..");
