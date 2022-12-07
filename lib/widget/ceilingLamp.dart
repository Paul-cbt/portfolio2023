import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/serices/themeAppStateModifier.dart';
import 'package:portfolio2/shared/maxWidth.dart';
import 'package:provider/provider.dart';

class CeilingLamp extends StatefulWidget {
  const CeilingLamp({super.key});

  @override
  State<CeilingLamp> createState() => _CeilingLampState();
}

class _CeilingLampState extends State<CeilingLamp> {
  bool isHovered = false;
  bool? isLight;

  void lampClick() async {
    setState(() {
      isLight = !isLight!;
    });
    await Future.delayed(const Duration(milliseconds: 100));
    Provider.of<AppStateNotifier>(context, listen: false)
        .updateTheme(!isLight!);
  }

  @override
  Widget build(BuildContext context) {
    isLight ??= Theme.of(context).brightness == Brightness.light;
    return GestureDetector(
      onTap: () {
        lampClick();
      },
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (event) {
          setState(() {
            isHovered = false;
          });
        },
        child: AnimatedContainer(
          // padding: isHovered? E,
          height: getMaxWidth(context) > 500
              ? isHovered
                  ? 130
                  : 120
              : isHovered
                  ? 70
                  : 60,
          duration: const Duration(milliseconds: 200),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 1000),
            child: isLight!
                ? CachedNetworkImage(
                    imageUrl: "assets/ceiling-lamp.png",
                    width: getMaxWidth(context) > 500 ? 150 : 70,
                    key: const Key('0'),
                    alignment: Alignment.bottomCenter,
                    fit: BoxFit.fitWidth,
                  )
                : CachedNetworkImage(
                    imageUrl: "assets/ceiling-lamp-off.png",
                    width: getMaxWidth(context) > 500 ? 150 : 70,
                    key: const Key('1'),
                    alignment: Alignment.bottomCenter,
                    fit: BoxFit.fitWidth,
                  ),
          ),
        ),
      ),
    );
  }
}
