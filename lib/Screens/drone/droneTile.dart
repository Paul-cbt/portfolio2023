import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/Screens/drone/droneVideoDialog.dart';

import 'package:portfolio2/models/droneVideo.dart';
import 'package:portfolio2/serices/theme.dart';

class DroneTile extends StatefulWidget {
  final DroneVideo video;

  const DroneTile({super.key, required this.video});

  @override
  State<DroneTile> createState() => _DroneTileState();
}

class _DroneTileState extends State<DroneTile> {
  double margin = 5;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          margin = 5;
        });
      },
      onExit: (event) {
        setState(() {
          margin = 10;
        });
      },
      child: InkWell(
        hoverColor: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          Navigator.of(context).push(PageRouteBuilder(
              opaque: false,
              barrierDismissible: true,
              pageBuilder: (BuildContext context, _, __) {
                return DroneVideoDialog(video: widget.video);
              }));
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          margin: EdgeInsets.all(margin + 10),
          // padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: CustomColors(context: context)
                        .shadowColor
                        .withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 3,
                    offset: Offset(5, 2))
              ]),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Hero(
                tag: widget.video.imagePath,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "assets/drone/${widget.video.imagePath}",
                    // height: height,
                    // width: width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  // width: MediaQuery.of(context).size.width * 0.3 - 100,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8, 50, 8, 8),
                    child: Text(
                      widget.video.location,
                      style: TextStyle(
                          color:
                              CustomColors(context: context).homePageTextColor,
                          fontFamily: 'QuickSand',
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
