import 'package:flutter/material.dart';
import 'package:lie_detection_web/widgets/spacer.dart';
import '../helper/style.dart';
import '../widgets/logo.dart';
import '../widgets/tabs_bar.dart';
import '../widgets/upgrade_tab.dart';
import 'about_tab.dart';
import 'blog_tab.dart';
import 'dashboard_tab.dart';
import 'feedback_tab.dart';
import 'home_tab.dart';

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
                        const Logo(flex: 1, logo: 'assets/images/logo.png'),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const FlexSpacer(),
                              Expanded(
                                flex: 3,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const TabsBar(
                                      flex: 3,
                                      tab1: "Home",
                                      tab2: "Dashboard",
                                      tab3: "Blog",
                                      tab4: "Feedback",
                                      tab5: "About",
                                    ),
                                    UpgradeTab(
                                      flex: 1,
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                              const FlexSpacer(flex: 5),
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
                        DashboardTabScreen(),
                        BlogTabScreen(),
                        FeedbackTabScreen(),
                        AboutTabScreen(),
                      ],
                    ),
                  ),
                  const FlexSpacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
