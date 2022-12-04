import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectTileLinkButton extends StatelessWidget {
  final String? url;
  final Widget icon;
  final Widget text;
  const ProjectTileLinkButton(
      {super.key, required this.icon, required this.text, required this.url});

  @override
  Widget build(BuildContext context) {
    if (url == null) {
      return Container();
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: TextButton.icon(
          onPressed: () {
            launchUrlString(url!);
          },
          icon: icon,
          label: text),
    );
  }
}
