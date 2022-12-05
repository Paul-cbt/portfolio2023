import 'package:flutter/material.dart';
import 'package:portfolio2/models/project.dart';

Project taradvent = Project(
    projectType: ProjectType.personal,
    name: 'Taradvent',
    appPreviewName: 'taradventPreview.png',
    directoryName: 'taradvent',
    iconName: 'icon.png',
    imageHeightFactor: 0.7,
    rightPadding: true,
    github: "https://github.com/Paul-cbt/taradvent",
    dates:
        ProjectDate(startDate: DateTime(2022, 11), endDate: DateTime(2022, 11)),
    subTitle: 'Advent Calendar App',
    lightThemeColor: Color(0xffAA3A3A),
    darkThemeColor: Color(0xffAA3A3A),
    alignOnLogoStart: true,
    description:
        "It is generally considered a very wholesome idea to create a custom advent calendar for the people you love. I was researching for different kinds of advent calendars you can buy or DIY to put custom messages in it for my girlfriend Tara. Then, I remembered: Wait, I'm actually an app developer. So on a cloudy Saturday afternoon, I was able to very quickly build this little app thanks to Flutter.");
