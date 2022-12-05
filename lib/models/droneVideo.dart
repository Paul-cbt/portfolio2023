class DroneVideo {
  String location;
  String imagePath;
  String id;

  bool copyrightProblems;

  DroneVideo(
      {required this.location,
      required this.imagePath,
      required this.id,
      this.copyrightProblems = true});
}
