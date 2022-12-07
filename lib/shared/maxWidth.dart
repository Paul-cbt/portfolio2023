import 'package:flutter/material.dart';

double getMaxWidth(BuildContext context) {
  //used to limit max width to 1000px
  return MediaQuery.of(context).size.width > 1200
      ? 1200
      : MediaQuery.of(context).size.width;
}

bool isBigSize(BuildContext context) {
  return getMaxWidth(context) > 900;
}
