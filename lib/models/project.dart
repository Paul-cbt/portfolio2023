class Project {
  ProjectType projectType;
  String name;
  ProjectDate dates;
  String subTitle;

  Project(
      {required this.projectType,
      required this.name,
      required this.dates,
      required this.subTitle});
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
