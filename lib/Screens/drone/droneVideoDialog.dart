import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:portfolio2/models/droneVideo.dart';
import 'package:portfolio2/serices/theme.dart';

class DroneVideoDialog extends StatefulWidget {
  final DroneVideo video;
  const DroneVideoDialog({super.key, required this.video});

  @override
  State<DroneVideoDialog> createState() => _DroneVideoDialogState();
}

class _DroneVideoDialogState extends State<DroneVideoDialog> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          child: Stack(
            children: [
              Hero(
                tag: widget.video.imagePath,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "assets/drone/${widget.video.imagePath}",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Icon(
                  Icons.play_arrow,
                  color: CustomColors(context: context).homePageTextColor,
                  size: 100,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
