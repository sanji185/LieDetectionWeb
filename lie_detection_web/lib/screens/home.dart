import 'package:flutter/material.dart';
import 'package:lie_detection_web/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';
import '../helper/style.dart';
import '../widgets/player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: colorSecondary,
        body: SafeArea(
          child: Expanded(
            child: Container(
              decoration: bgDecoration,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Image.asset(
                              'assets/images/logo.png',
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Expanded(flex: 1, child: SizedBox()),
                              Expanded(
                                flex: 3,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: EdgeInsets.all(2.sp),
                                        child: TabBar(
                                            indicator: BoxDecoration(
                                                color: colorPrimary,
                                                borderRadius:
                                                    BorderRadius.circular(8.0)),
                                            labelColor: colorFontHighlighter,
                                            unselectedLabelColor: Colors.black,
                                            labelStyle: TextStyle(
                                                fontFamily: "Poppins-Medium",
                                                fontSize: 3.5.sp,
                                                fontWeight: FontWeight.w700),
                                            tabs: const [
                                              Tab(text: "Home"),
                                              Tab(text: "Dashboard"),
                                              Tab(text: "Blog"),
                                              Tab(text: "Feedback"),
                                              Tab(text: "About"),
                                            ]),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 18.0),
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              CText(
                                                  msg: "Upgrade ",
                                                  fontSize: 4.sp,
                                                  color: colorFontHighlighter,
                                                  fontWeight: FontWeight.w600),
                                              Image.asset(
                                                "assets/images/Icons/premium.png",
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Expanded(flex: 5, child: SizedBox()),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    flex: 4,
                    child: TabBarView(
                      children: [
                        HomeTabScreen(),
                        WebVideoPlayer(),
                        Icon(Icons.directions_transit, size: 350),
                        Icon(Icons.directions_car, size: 350),
                        Icon(Icons.directions_transit, size: 350),
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              const Expanded(child: SizedBox()),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CText(
                        msg: "Lie Detector ",
                        fontSize: 10.sp,
                        fontFamily: "Poppins-ExtraBold",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: CText(
                        msg: lieDetectorInstruction,
                        fontSize: 4.sp,
                        color: colorFont,
                        height: 1.4,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: 150,
                          margin: EdgeInsets.fromLTRB(0, 3.sp, 3.sp, 3.sp),
                          child: Material(
                            color: colorPrimary,
                            borderRadius: BorderRadius.circular(20.0),
                            child: InkWell(
                              splashColor: colorSecondary,
                              onTap: () {},
                              child: Center(
                                child: CText(
                                  msg: "More...",
                                  fontSize: 4.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins-Medium",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 5.sp),
            child: const WebVideoPlayer(),
          ),
        )
      ],
    );
  }
}
