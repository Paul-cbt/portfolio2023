import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio2/Screens/Projects/latestProjectsPage.dart';
import 'package:portfolio2/Screens/aboutMe/aboutMePage.dart';
import 'package:portfolio2/Screens/drone/dronePage.dart';
import 'package:portfolio2/Screens/homePage/homePage.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HomePage(),
            SizedBox(height: 50),
            AboutMe(),
            SizedBox(height: 80),
            LatestProjectsPage(),
            SizedBox(height: 80),
            DronePage(),
            SizedBox(height: 200),
          ],
        ),
      ),
    );
  }
}
