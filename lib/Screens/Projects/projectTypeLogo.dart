import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio2/serices/theme.dart';

class ClientWorkLogo extends StatelessWidget {
  const ClientWorkLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: CustomColors(context: context).secondaryColor,
              offset: const Offset(0, 2),
              blurRadius: 20)
        ],
        borderRadius: BorderRadius.circular(10),
        color: CustomColors(context: context).secondaryColor,
      ),
      height: 45,
      child: Center(
        child: Text(
          "Client Work",
          style: TextStyle(
              fontSize: 14,
              fontFamily: 'QuickSand',
              color: CustomColors(context: context).deepBlue,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class PersonalWorkLogo extends StatelessWidget {
  const PersonalWorkLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: CustomColors(context: context).personalTypeColor,
              offset: const Offset(0, 2),
              blurRadius: 20)
        ],
        borderRadius: BorderRadius.circular(10),
        color: CustomColors(context: context).personalTypeColor,
      ),
      height: 45,
      child: Center(
        child: Text(
          "Personal Project",
          style: TextStyle(
              fontSize: 14,
              fontFamily: 'QuickSand',
              color: CustomColors(context: context).personalTypeTextColor,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
