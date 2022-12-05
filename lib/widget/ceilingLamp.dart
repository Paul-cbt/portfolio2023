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
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<AppStateNotifier>(context, listen: false).updateTheme();
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
            duration: const Duration(milliseconds: 400),
            child: Theme.of(context).brightness == Brightness.light
                ? Image.asset(
                    'ceiling-lamp.png',
                    width: getMaxWidth(context) > 500 ? 150 : 70,
                    key: const Key('0'),
                    alignment: Alignment.bottomCenter,
                    fit: BoxFit.fitWidth,
                  )
                : Image.asset(
                    'ceiling-lamp-off.png',
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
