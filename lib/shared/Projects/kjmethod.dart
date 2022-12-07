import 'package:flutter/material.dart';
import 'package:portfolio2/models/project.dart';

Project kjmethod = Project(
    projectType: ProjectType.professional,
    name: 'KJ METHOD',
    aspectRatio: 1923 / 3962,
    appPreviewName: 'kjmethodAppPreview.png',
    directoryName: 'kjmethod',
    iconName: 'icon.png',
    clientName: 'Kalimah',
    testimonial: [
      'Perfect. Love it',
      'I looked at the app and first of all, great job.  I just looks really good.',
      'I love how this app is looking.'
    ],
    dates:
        ProjectDate(startDate: DateTime(2022, 3), endDate: DateTime(2022, 5)),
    subTitle: 'Real Estate Exam Prep',
    lightThemeColor: const Color(0xff00315c),
    darkThemeColor: const Color(0xFFF7F7F7),
    rightPadding: true,
    iosDownloadLink:
        'https://apps.apple.com/fr/app/kjmethod-real-estate-exam-prep/id1613992394',
    androidDownloadLink:
        'https://play.google.com/store/apps/details?id=com.kjes.kjmethod&hl=en&gl=US',
    description:
        "Kalimah was building her online class when she stumbled upon OutLearn. At first, we wanted to adapt OutLearn a bit so she could iFrame a set of flashcards. After talking, we decided it would be far better to create a standalone app for her course. With this app, her students can directly learn their vocab, they have daily reminders and Kalimah can iFrame the flashcards on her website.");
