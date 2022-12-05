import 'package:flutter/material.dart';

class Project {
  ProjectType projectType;
  String name;
  ProjectDate dates;
  String subTitle;

  String? clientName;
  List<String>? testimonial;

  String description;

  String directoryName;

  String iconName;
  String appPreviewName;
  List<String> showCaseImages;

  String get iconPath => "$directoryName/$iconName";
  String get appPreviewPath => "$directoryName/$appPreviewName";

  Color lightThemeColor;
  Color darkThemeColor;

  String? iosDownloadLink;
  String? androidDownloadLink;
  String? website;
  String? github;

  double imageHeightFactor;
  bool rightPadding;
  bool alignOnLogoStart;
  bool isWideImage;
  bool isLogoCircle;

  bool rendersAreFromBeta;

  Color textColor(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.light) {
      return lightThemeColor;
    }
    return darkThemeColor;
  }

  Project(
      {required this.projectType,
      required this.name,
      required this.dates,
      required this.subTitle,
      required this.iconName,
      this.clientName,
      this.testimonial,
      this.rendersAreFromBeta = false,
      this.isWideImage = false,
      this.isLogoCircle = false,
      required this.directoryName,
      required this.appPreviewName,
      required this.lightThemeColor,
      required this.description,
      this.imageHeightFactor = 1,
      this.alignOnLogoStart = false,
      this.rightPadding = false,
      required this.darkThemeColor,
      this.website,
      this.showCaseImages = const [],
      this.androidDownloadLink,
      this.iosDownloadLink,
      this.github});
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
