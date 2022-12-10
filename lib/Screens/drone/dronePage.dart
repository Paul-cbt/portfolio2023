import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/Screens/drone/droneTile.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/droneVideoList.dart';
import 'package:portfolio2/shared/maxWidth.dart';

class DronePage extends StatefulWidget {
  const DronePage({super.key});

  @override
  State<DronePage> createState() => _DronePageState();
}

class _DronePageState extends State<DronePage> {
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Drone",
          style: TextStyle(
              fontSize: 70,
              color: CustomColors(context: context).deepBlue,
              fontFamily: "QuickSandSemi",
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 15),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            "As a secondary Hobby, I love to fly my DJI air 2s around. Here are a few of my best edits:",
            style: TextStyle(
                fontSize: 15,
                fontFamily: "QuickSand",
                color: CustomColors(context: context).secondaryTextColor),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 70),
        Center(
          child: CarouselSlider.builder(
              carouselController: controller,
              itemCount: droneVideos.length,
              itemBuilder: (context, index, realIndex) {
                return DroneTile(video: droneVideos[index]);
              },
              options: CarouselOptions(
                  aspectRatio: isBigSize(context) ? 19 / 7 : 8 / 5,
                  viewportFraction: isBigSize(context) ? 0.6 : 0.8,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  autoPlayInterval: const Duration(seconds: 10),
                  enlargeCenterPage: true)),
        ),
        // if (!isBigSize(context))
        // SmoothPageIndicator(controller: CarouselController(), count: count)
      ],
    );
  }
}
