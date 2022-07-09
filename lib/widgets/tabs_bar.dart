import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../helper/style.dart';

class TabsBar extends StatelessWidget {
  final String tab1;
  final String tab2;
  final String tab3;
  final String tab4;
  final String tab5;
  final int flex;
  const TabsBar({
    Key? key,
    required this.tab1,
    required this.tab2,
    required this.tab3,
    required this.tab4,
    required this.tab5,
    required this.flex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: EdgeInsets.all(2.sp),
        child: TabBar(
            indicator: indicatorDecoration,
            labelColor: colorFontHighlighter,
            unselectedLabelColor: Colors.black,
            labelStyle: tabLabelStyle,
            tabs: [
              Tab(text: tab1),
              Tab(text: tab2),
              Tab(text: tab3),
              Tab(text: tab4),
              Tab(text: tab5),
            ]),
      ),
    );
  }
}
