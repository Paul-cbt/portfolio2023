import 'package:flutter/material.dart';
import 'package:portfolio2/models/project.dart';

Project leaScore = Project(
    projectType: ProjectType.professional,
    name: 'LEA Score',
    appPreviewName: 'leaScoreAppPreview.png',
    directoryName: 'leascore',
    iconName: 'icon.jpg',
    dates: ProjectDate(startDate: DateTime(2022, 4), endDate: null),
    subTitle: 'Health profiling app',
    mainColor: Color(0xff28B1C2),
    secondaryColor: Color(0xffFF3028),
    website: 'https://leascore.com',
    description:
        "When Pepijn reached out to me in April 2022 he wanted to convert his paper test into an app. In fact, for his Ph.D., he created a test to know enough about a person's habits, health & personality to evaluate his risk of developing a cardiovascular disease. I quickly showed him how much we could do with this app, and we embarked on a journey to create a robust health app that both Personal users and Health organizations could use.");
