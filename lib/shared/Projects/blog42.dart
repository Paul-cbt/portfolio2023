import 'package:flutter/material.dart';
import 'package:portfolio2/models/project.dart';

Project blog42 = Project(
    projectType: ProjectType.personal,
    name: 'BLOG 42',
    appPreviewName: 'blogAppPreview.png',
    directoryName: 'blog42',
    iconName: 'icon.png',
    imageHeightFactor: 0.7,
    isWideImage: true,
    isLogoCircle: true,
    dates: ProjectDate(startDate: DateTime(2021, 12), endDate: null),
    subTitle: 'Simple Blog Website template',
    lightThemeColor: Color(0xff1A1B20),
    darkThemeColor: const Color(0xFFF7F7F7),
    rightPadding: false,
    website: 'https://blog-template-42.web.app/#/',
    github: 'https://github.com/Paul-cbt/blog_template',
    description:
        "During my first months at my web dev bachelor, we were asked to create a website with the tools we wanted, the goal was just to have a coherent design and good content. I then copied the website I did to a new project and removed all the content to transform it into a template. ");
