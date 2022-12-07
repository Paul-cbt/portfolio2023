import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:portfolio2/models/droneVideo.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class DroneVideoDialog extends StatefulWidget {
  final DroneVideo video;
  const DroneVideoDialog({super.key, required this.video});

  @override
  State<DroneVideoDialog> createState() => _DroneVideoDialogState();
}

class _DroneVideoDialogState extends State<DroneVideoDialog> {
  late YoutubePlayerController _controller;
  bool playVideo = false;

  @override
  void initState() {
    _controller = YoutubePlayerController()
      ..onInit = () {
        _controller.cueVideoById(videoId: widget.video.id, startSeconds: 0);
      };
    super.initState();
  }

  void startVideo() {
    if (widget.video.copyrightProblems) {
      //has to open youtube,
      launchUrlString('https://youtu.be/${widget.video.id}');
    } else {
      setState(() {
        playVideo = true;
        _controller.playVideo();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      alignment: Alignment.center,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        child: !playVideo
            ? AspectRatio(
                aspectRatio: 16 / 9,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: startVideo,
                    child: Stack(
                      children: [
                        Hero(
                          tag: widget.video.imagePath,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CachedNetworkImage(
                              imageUrl:
                                  "assets/drone/${widget.video.imagePath}",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                  color: CustomColors(context: context)
                                      .homePageTextColor,
                                  size: MediaQuery.of(context).size.width > 500
                                      ? 100
                                      : 70,
                                ),
                                if (widget.video.copyrightProblems)
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.info,
                                        color: CustomColors(context: context)
                                            .homePageTextColor,
                                      ),
                                      const SizedBox(width: 10),
                                      Flexible(
                                        child: Text(
                                          'Due to copyrighted music I can\'t play this video in an iFrame\nTapping the button will open youtube',
                                          style: TextStyle(
                                              color:
                                                  CustomColors(context: context)
                                                      .homePageTextColor,
                                              fontFamily: "QuickSand"),
                                        ),
                                      )
                                    ],
                                  )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            : AspectRatio(
                aspectRatio: 16 / 9,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: YoutubePlayer(
                    controller: _controller,
                    aspectRatio: 16 / 9,
                  ),
                ),
              ),
      ),
    );
  }
}
