import 'package:flutter/material.dart';

class Project {
  ProjectType projectType;
  String name;
  ProjectDate dates;
  String subTitle;

  String description;

  String directoryName;

  String iconName;
  String appPreviewName;
  List<String> showCaseImages;

  String get iconPath => "$directoryName/$iconName";
  String get appPreviewPath => "$directoryName/$appPreviewName";

  Color mainColor;
  Color secondaryColor;

  String? iosDownloadLink;
  String? androidDownloadLink;
  String? website;

  Project(
      {required this.projectType,
      required this.name,
      required this.dates,
      required this.subTitle,
      required this.iconName,
      required this.directoryName,
      required this.appPreviewName,
      required this.mainColor,
      required this.description,
      required this.secondaryColor,
      this.website,
      this.showCaseImages = const [],
      this.androidDownloadLink,
      this.iosDownloadLink});
}

enum ProjectType { personal, professional }

class ProjectDate {
  DateTime startDate;
  DateTime? endDate; //can be null if project is still going

  ProjectDate({
    required this.startDate,
    required this.endDate,
  });
}
