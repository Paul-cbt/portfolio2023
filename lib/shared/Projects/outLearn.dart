import 'package:flutter/material.dart';
import 'package:portfolio2/models/project.dart';

Project outlearn = Project(
    projectType: ProjectType.personal,
    name: 'OutLearn',
    appPreviewName: 'outlearnAppPreview.png',
    directoryName: 'outlearn',
    iconName: 'icon.png',
    rendersAreFromBeta: true,
    imageHeightFactor: 1,
    rightPadding: false,
    website: 'https://outlearnapp.com',
    iosDownloadLink:
        'https://apps.apple.com/de/app/outlearn-flashcards/id1550561105',
    androidDownloadLink:
        'https://play.google.com/store/apps/details?id=web.app.outlearn&hl=en&gl=US&pli=1',
    dates: ProjectDate(startDate: DateTime(2020, 09), endDate: null),
    subTitle: 'Flashcard Learning App',
    lightThemeColor: Color(0xffff964f),
    darkThemeColor: Color(0xffff964f),
    alignOnLogoStart: true,
    description:
        "When I was 13, I had the idea to create an app, that would help me learn my Spanish vocab. I wanted something that would let me learn short term if I have an exam coming up soon but also long term so I don't forget my vocab once the exam's over. After using Quizlet for a few years, they removed the long term learning feature, so I taught myself Flutter during the covid pandemic (I already had a strong programming background). A few months after that, I finally had enough knowledge to start building OutLearn, and this is the result.");
