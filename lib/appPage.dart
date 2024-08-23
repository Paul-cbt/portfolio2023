import 'package:assets_audio_player/assets_audio_player.dart';
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
import 'package:portfolio2/shared/Projects/projectList.dart';
import 'package:portfolio2/shared/maxWidth.dart';
import 'package:portfolio2/shared/playMusic.dart';
import 'package:portfolio2/widget/ceilingLamp.dart';
import 'package:universal_html/html.dart' as uni;

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> with SingleTickerProviderStateMixin {
  bool isInit = false;
  bool hasPlayedMusic = false;
  bool hasLoadedMusic = false;
  late AnimationController iconController;
  bool showConcert = true;
  final assetsAudioPlayer = AssetsAudioPlayer.withId("music");
  @override
  void initState() {
    var loader = uni.document.getElementsByClassName('container');

    if (loader.isNotEmpty) {
      loader.first.remove();
      //remove the loading in the html file
    }
    loadMusic();

    iconController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    _appPageScrollController.addListener(
      () {
        if (showConcertBool != showConcert) {
          setState(() {
            showConcert = showConcertBool();
            // print('updated');
          });
        }
      },
    );
    super.initState();
  }

  void startMusic() async {
    if (!hasLoadedMusic) {
      await loadMusic();
    }
    assetsAudioPlayer.playOrPause();
  }

  Future loadMusic() async {
    await assetsAudioPlayer.open(Audio("audios/redemption.mp3"),
        volume: 0.2,
        autoStart: false,
        respectSilentMode: true,
        loopMode: LoopMode.single,
        notificationSettings: NotificationSettings(),
        playInBackground: PlayInBackground.disabledRestoreOnForeground,
        showNotification: false);
    hasLoadedMusic = true;
  }

  bool showConcertBool() {
    bool show = true;
    // print(
    //     'current: ${_appPageScrollController.offset} max: ${_appPageScrollController.position.maxScrollExtent}');
    try {
      show = !hasPlayedMusic &&
          (MediaQuery.of(context).size.width > 700 ||
              _appPageScrollController.offset < 10 ||
              _appPageScrollController.offset >
                  _appPageScrollController.position.maxScrollExtent - 50) &&
          MediaQuery.of(context).size.width > 550;
    } catch (e) {}
    return show;
  }

  final ScrollController _appPageScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    if (!isInit) {
      precacheImage(const NetworkImage("assets/meHome.jpg"), context);
      precacheImage(const NetworkImage("assets/parisImage.jpg"), context);
      isInit = true;
    }
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _appPageScrollController,
            child: Column(
              children: [
                const HomePage(),
                const SizedBox(height: 50),
                const AboutMe(),
                const SizedBox(height: 80),
                const LatestProjectsPage(),
                const SizedBox(height: 80),
                const DronePage(),
                SizedBox(height: isBigSize(context) ? 200 : 100),
                const ContactPage()
              ],
            ),
          ),
          HorizontalNavbar(scrollController: _appPageScrollController),
          CeilingLamp(),
          if (showConcert)
            Container(
              alignment: Alignment.bottomRight,
              child: PlayMusic(
                  body: Container(),
                  color: Theme.of(context).colorScheme.secondary,
                  child: Material(
                      color: Colors.transparent,
                      child: Text('Start concert',
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width > 700
                                  ? 20
                                  : 13,
                              color: Theme.of(context).colorScheme.secondary))),
                  onSwipe: () {}),
            ),
          Container(
            margin: EdgeInsets.only(right: 10, bottom: 10),
            alignment: Alignment.bottomRight,
            child: InkWell(
              onTap: () {
                startMusic();
                setState(() {
                  hasPlayedMusic = true;
                });
                iconController.status.index == 0
                    ? iconController.forward()
                    : iconController.reverse();
              },
              child: AnimatedIcon(
                  size: 30,
                  icon: AnimatedIcons.play_pause,
                  progress: iconController),
            ),
          )
        ],
      ),
    );
  }
}
