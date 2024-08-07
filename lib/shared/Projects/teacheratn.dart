import 'package:flutter/material.dart';
import 'package:portfolio2/models/project.dart';

Project teacheratn = Project(
    projectType: ProjectType.professional,
    name: 'TEACHERATN',
    appPreviewName: 'teacheratnAppPreview.png',
    directoryName: 'teacheratn',
    aspectRatio: 2608 / 838,
    iconName: 'icon.png',
    clientName: 'Etienne',
    alignLogoToRight: true,
    testimonial: [
      'He is very good and talented! Merci paul!',
      'Amazing seller, I had to book him again for his quality work',
      'I highly recommend his skills and willingness to help you create your project',
    ],
    imageHeightFactor: 0.5,
    isWideImage: true,
    isLogoCircle: true,
    dates:
        ProjectDate(startDate: DateTime(2021, 12), endDate: DateTime(2023, 9)),
    subTitle: 'Multifunctional app for English courses',
    lightThemeColor: Color(0xffC61B22),
    darkThemeColor: Color(0xffC61B22),
    rightPadding: false,
    website: 'https://teacheratnapp.web.app/#/',
    description:
        "Etienne was my first client. In the end of 2021 he reached out to me thanks to Fiverr. He wanted an app for his students where they could watch a youtube video with subtitles and directly be able to translate one word by clicking on it. They can then also add these words to their vocab and learn them. Later, we added a few other learning modes to help his students learn and have more fun while doing it!");
