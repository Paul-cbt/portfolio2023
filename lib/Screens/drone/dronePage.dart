import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/Screens/drone/droneTile.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/droneVideoList.dart';
import 'package:portfolio2/shared/maxWidth.dart';

class DronePage extends StatelessWidget {
  const DronePage({super.key});

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
        const SizedBox(height: 100),
        Center(
          child: CarouselSlider.builder(
              itemCount: droneVideos.length,
              itemBuilder: (context, index, realIndex) {
                return DroneTile(video: droneVideos[index]);
              },
              options: CarouselOptions(
                  aspectRatio: isBigSize(context) ? 19 / 7 : 1,
                  viewportFraction: isBigSize(context) ? 0.6 : 0.95,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  autoPlayInterval: const Duration(seconds: 10),
                  enlargeCenterPage: true)),
        )
      ],
    );
  }
}
