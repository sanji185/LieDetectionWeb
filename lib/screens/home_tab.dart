import 'package:flutter/material.dart';
import 'package:lie_detection_web/widgets/button.dart';
import 'package:sizer/sizer.dart';

import '../helper/data.dart';
import '../helper/style.dart';
import '../widgets/custom_text.dart';
import '../widgets/spacer.dart';
import '../widgets/video_player.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    const FlexSpacer(),
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
                              height: .28.sp,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Button(
                              name: "More...",
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              MYVideoPlayer(
                videoData: videoData,
                flex: 5,
              ),
              const FlexSpacer(),
            ],
          ),
        ),
        const FlexSpacer(),
      ],
    );
  }
}
