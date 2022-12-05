import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/maxWidth.dart';
import 'package:portfolio2/shared/zoomableImage.dart';

class HomePageImage extends StatelessWidget {
  const HomePageImage({super.key});

  @override
  Widget build(BuildContext context) {
    Radius radius = getMaxWidth(context) > 700
        ? const Radius.circular(100)
        : const Radius.circular(70);

    double imageSize = isBigSize(context)
        ? getMaxWidth(context) / 2.2
        : getMaxWidth(context) - 60;

    return Stack(
      children: [
        if (isBigSize(context))
          Container(
            height: imageSize,
            width: imageSize,
            margin: EdgeInsets.only(left: 10, top: 10),
            decoration: BoxDecoration(
                color: CustomColors(context: context).deepBlue,
                borderRadius: BorderRadius.only(
                    bottomLeft: radius - const Radius.circular(10),
                    bottomRight: radius + const Radius.circular(10),
                    topLeft: radius),
                boxShadow: []),
          ),
        if (!isBigSize(context))
          Container(
            height: imageSize,
            width: imageSize,
            margin: EdgeInsets.only(left: 5, top: 5),
            decoration: BoxDecoration(
                color: CustomColors(context: context).deepBlue,
                borderRadius: BorderRadius.only(
                    bottomLeft: radius - const Radius.circular(5),
                    bottomRight: radius + const Radius.circular(5),
                    topLeft: radius),
                boxShadow: []),
          ),
        Container(
            height: imageSize,
            width: imageSize,
            decoration: BoxDecoration(
                // color: CustomColors(context: context).deepBlue,
                borderRadius: BorderRadius.only(
                    bottomLeft: radius, bottomRight: radius, topLeft: radius),
                boxShadow: [
                  BoxShadow(
                      color: CustomColors(context: context)
                          .shadowColor
                          .withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: Offset(5, 5)),
                ]),
            child: ZoomableImage(
                borderRadius: BorderRadius.only(
                    bottomLeft: radius, bottomRight: radius, topLeft: radius),
                path: "meHome.jpg")),
      ],
    );
  }
}
