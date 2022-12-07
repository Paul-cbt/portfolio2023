import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/maxWidth.dart';
import 'package:portfolio2/shared/zoomableImage.dart';

class ContactImage extends StatelessWidget {
  const ContactImage({super.key});

  @override
  Widget build(BuildContext context) {
    Radius radius = getMaxWidth(context) > 700
        ? const Radius.circular(100)
        : const Radius.circular(70);

    double imageSize = isBigSize(context)
        ? getMaxWidth(context) / 2
        : getMaxWidth(context) - 60 > MediaQuery.of(context).size.height / 2
            ? MediaQuery.of(context).size.height / 2
            : getMaxWidth(context) - 60;
    return Row(
      children: [
        Container(
            height: imageSize,
            width: imageSize,
            decoration: BoxDecoration(
                color: CustomColors(context: context).deepBlue,
                borderRadius: BorderRadius.only(
                    bottomLeft: radius, bottomRight: radius, topRight: radius),
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
                fit: BoxFit.fill,
                borderRadius: BorderRadius.only(
                    bottomLeft: radius, bottomRight: radius, topRight: radius),
                path: "parisImage.jpg")),
      ],
    );
  }
}
