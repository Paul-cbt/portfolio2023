import 'package:flutter/material.dart';
import 'package:portfolio2/models/project.dart';

Project teacheratn = Project(
    projectType: ProjectType.professional,
    name: 'TEACHERATN',
    appPreviewName: 'teacheratnAppPreview.png',
    directoryName: 'teacheratn',
    iconName: 'icon.png',
    imageHeightFactor: 0.5,
    isWideImage: true,
    isLogoCircle: true,
    dates: ProjectDate(startDate: DateTime(2021, 12), endDate: null),
    subTitle: 'Multifunctional app for English courses',
    lightThemeColor: Color(0xffC61B22),
    darkThemeColor: Color(0xffC61B22),
    rightPadding: false,
    website: 'https://teacheratnapp.web.app/#/',
    description:
        "Etienne was my first client, in the end of 2021 he reached out to me thanks to Fiverr. He wanted an app for his student where they could watch a youtube video with subtitles and directly be able to translate one word by clicking on it. They can then also add these words to their vocab and learn them. Later, we added a few other learning modes to help his student learn and have more fun while doing it!");
