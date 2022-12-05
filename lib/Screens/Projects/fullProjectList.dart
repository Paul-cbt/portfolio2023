import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio2/Screens/Projects/projectTile.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/shared/Projects/projectList.dart';
import 'package:portfolio2/shared/maxWidth.dart';

class FullProjectList extends StatelessWidget {
  const FullProjectList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              collapsedHeight: 100,
              toolbarHeight: 100,
              backgroundColor: Colors.transparent,
              floating: true,
              elevation: 0,
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: SvgPicture.asset(
                    'home.svg',
                    color: CustomColors(context: context).primaryColor,
                  )),
              title: Text(
                "Project Gallery",
                style: TextStyle(
                    fontSize: isBigSize(context) ? 70 : 30,
                    color: CustomColors(context: context).deepBlue,
                    fontFamily: "QuickSandSemi",
                    fontWeight: FontWeight.w400),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ProjectTile(
                              project: projectList[index],
                            ),
                          ],
                        ),
                    childCount: projectList.length)),
            SliverToBoxAdapter(
              child: Container(
                margin:
                    EdgeInsets.only(top: 50, bottom: 50, left: 30, right: 30),
                child: Center(
                  child: Text(
                    "2 other professional projects under NDA that can't be shown yet",
                    style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 20,
                        color:
                            CustomColors(context: context).secondaryTextColor),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
