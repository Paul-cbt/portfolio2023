import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/Screens/drone/droneTile.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/droneVideoList.dart';
import 'package:portfolio2/shared/maxWidth.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
        const SizedBox(height: 100),
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
