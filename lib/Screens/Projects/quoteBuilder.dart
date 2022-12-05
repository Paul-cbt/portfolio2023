import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio2/serices/theme.dart';

class QuoteBuilder extends StatefulWidget {
  final List<String> testimonials;

  const QuoteBuilder({
    Key? key,
    required this.testimonials,
  }) : super(key: key);

  @override
  State<QuoteBuilder> createState() => _QuoteBuilderState();
}

class _QuoteBuilderState extends State<QuoteBuilder> {
  double fontSize = 14;
  late Timer timer;
  PageController controller = PageController();

  @override
  void initState() {
    timer = Timer.periodic(Duration(milliseconds: 8000), (timer) {
      setState(() {
        if (controller.page == widget.testimonials.length - 1) {
          controller.animateToPage(0,
              duration: Duration(milliseconds: 1300), curve: Curves.easeInOut);
        } else {
          controller.nextPage(
              duration: Duration(milliseconds: 1300), curve: Curves.easeInOut);
        }
      });
    });
    widget.testimonials.shuffle();
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Text(
          widget.testimonials[index],
          style: TextStyle(
            fontSize: fontSize,
            color: CustomColors(context: context).secondaryTextColor,
            fontStyle: FontStyle.italic,
            fontFamily: "QuickSand",
          ),
          textAlign: TextAlign.left,
        );
      },
      itemCount: widget.testimonials.length,
    );
  }
}
