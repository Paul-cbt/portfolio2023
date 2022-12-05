import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio2/Screens/Projects/featuredProjectsPage.dart';
import 'package:portfolio2/Screens/aboutMe/aboutMePage.dart';
import 'package:portfolio2/Screens/contact/contactPage.dart';
import 'package:portfolio2/Screens/drone/dronePage.dart';
import 'package:portfolio2/Screens/homePage/homePage.dart';
import 'package:portfolio2/Screens/navbar/horizontalNarBar.dart';
import 'package:portfolio2/widget/ceilingLamp.dart';
import 'package:universal_html/html.dart' as uni;

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  bool isInit = false;
  @override
  void initState() {
    var loader = uni.document.getElementsByClassName('container');

    if (loader.isNotEmpty) {
      loader.first.remove();
      //remove the loading in the html file
    }
    super.initState();
  }

  final ScrollController _appPageScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    if (!isInit) {
      precacheImage(const NetworkImage("assets/meHome.jpg"), context);
      precacheImage(const NetworkImage("assets/aboutMe.jpg"), context);
      isInit = true;
    }
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
