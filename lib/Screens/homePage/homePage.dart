import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:portfolio2/Screens/homePage/homePageImage.dart';
import 'package:portfolio2/Screens/homePage/homePageText.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/clipShadowPath.dart';
import 'package:portfolio2/shared/maxWidth.dart';
import 'package:portfolio2/widget/ceilingLamp.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipShadowPath(
      shadow: BoxShadow(
          color: CustomColors(context: context).shadowColor,
          blurRadius: 40,
          spreadRadius: 15,
          offset: Offset(10, 2)),
      clipper: OvalBottomBorderClipper(),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal:
                MediaQuery.of(context).size.width > 1030 || !isBigSize(context)
                    ? 0
                    : 30),
        height: MediaQuery.of(context).size.height - 50,
        width: MediaQuery.of(context).size.width,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: CustomColors(context: context).secondaryColor,
        ),
        child: Center(
          child: SizedBox(
            width: getMaxWidth(context),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: getMaxWidth(context) > 900
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [HomePageImage(), HomePageText()],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        HomePageImage(),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: HomePageText())
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
