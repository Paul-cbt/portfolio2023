import 'package:flutter/material.dart';
import 'package:portfolio2/models/project.dart';

Project leaScore = Project(
    projectType: ProjectType.professional,
    name: 'LEA Score',
    aspectRatio: 2770 / 3532,
    appPreviewName: 'leaScoreAppPreview.png',
    directoryName: 'leascore',
    iconName: 'icon.jpg',
    clientName: 'Pepijn',
    testimonial: [
      'Forget about other developers, Paul is all you need.',
      'Paul is highly professional in work, delivery speed and communication.',
      'He also thinks along with you for solutions making your app better performing, and more pleasant for the user than you imagined!'
    ],
    dates: ProjectDate(startDate: DateTime(2022, 4), endDate: null),
    subTitle: 'Health profiling app',
    lightThemeColor: Color(0xff28B1C2),
    darkThemeColor: Color(0xff28B1C2),
    website: 'https://leascore.com',
    description:
        "When Pepijn reached out to me in April 2022 he wanted to convert his paper test into an app. In fact, for his Ph.D., he created a test to know enough about a person's habits, health & personality to evaluate his risk of developing a cardiovascular disease. I quickly showed him how much we could do with this app, and we embarked on a journey to create a robust health app that both Personal users and Health organizations could use.");
