import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CeilingLamp extends StatefulWidget {
  const CeilingLamp({super.key});

  @override
  State<CeilingLamp> createState() => _CeilingLampState();
}

class _CeilingLampState extends State<CeilingLamp> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
        height: isHovered ? 130 : 120,
        duration: const Duration(milliseconds: 200),
        child: Image.asset(
          'ceiling-lamp.png',
          width: 150,
          alignment: Alignment.bottomCenter,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
