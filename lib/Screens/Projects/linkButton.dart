import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectTileLinkButton extends StatelessWidget {
  final String? url;
  final Widget icon;
  final Color color;
  final Widget text;
  const ProjectTileLinkButton(
      {super.key,
      required this.icon,
      required this.text,
      required this.url,
      required this.color});

  @override
  Widget build(BuildContext context) {
    if (url == null) {
      return Container();
    }
    return InkWell(
      splashColor: color,
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        print('press');
        launchUrlString(url!);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [icon, const SizedBox(width: 10), text],
        ),
      ),
    );
  }
}
