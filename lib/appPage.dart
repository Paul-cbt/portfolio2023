import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio2/Screens/Projects/latestProjectsPage.dart';
import 'package:portfolio2/Screens/aboutMe/aboutMePage.dart';
import 'package:portfolio2/Screens/contact/contactPage.dart';
import 'package:portfolio2/Screens/drone/dronePage.dart';
import 'package:portfolio2/Screens/homePage/homePage.dart';
import 'package:portfolio2/Screens/navbar/horizontalNarBar.dart';
import 'package:portfolio2/widget/ceilingLamp.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  final ScrollController _appPageScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _appPageScrollController,
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
                ContactPage()
              ],
            ),
          ),
          HorizontalNavbar(scrollController: _appPageScrollController),
          CeilingLamp()
        ],
      ),
    );
  }
}
