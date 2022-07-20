// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lie_detection_web/helper/data.dart';
import 'package:lie_detection_web/helper/style.dart';
import 'package:lie_detection_web/widgets/spacer.dart';
import '../helper/data.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

import '../widgets/custom_text.dart';
import '../widgets/video_player.dart';

class DashboardTabScreen extends StatelessWidget {
  const DashboardTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Row(
              children: [
                MYVideoPlayer(
                    padding: EdgeInsets.only(left: 15.sp, right: 5.sp),
                    flex: 4,
                    videoData: videoData),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(5.sp),
                      child: SvgPicture.asset(
                        "assets/images/Icons/SvgIcons/process.svg",
                      ),
                    ),
                  ),
                ),
                MYVideoPlayer(
                    padding: EdgeInsets.only(left: 5.sp, right: 15.sp),
                    flex: 4,
                    videoData: videoData),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Center(
                    child: BGText(
                      text: "Input Player",
                    ),
                  ),
                ),
                const FlexSpacer(),
                Expanded(
                  flex: 4,
                  child: Center(
                    child: BGText(
                      text: "Output Player",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 5.sp, bottom: 6.sp),
              child: Container(
                color: colorPrimary.withOpacity(0.5),
                child: Padding(
                  padding: EdgeInsets.only(left: 5.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CText(
                        msg: "Instructions:",
                        fontSize: 5.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins-SemiBold",
                      ),
                      const BulletText(
                        msg:
                            "Upload video length is less than 1 min (video length < 1 min)",
                      ),
                      const BulletText(
                        msg: "Video quality more than 720p (mp4)",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BGText extends StatelessWidget {
  String? text;
  BGText({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.sp, right: 5.sp),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.sp),
          color: colorPrimary.withOpacity(.5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CText(
            msg: text ?? "Player",
            fontSize: 3.5.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class BulletText extends StatelessWidget {
  final String? bulletSvgImgPath;
  final String? msg;
  final EdgeInsetsGeometry? padding;
  const BulletText({
    Key? key,
    this.bulletSvgImgPath,
    this.msg,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: padding ?? EdgeInsets.only(left: 3.sp, right: 2.sp),
          child: SvgPicture.asset(
              width: 2.5.sp,
              height: 2.5.sp,
              bulletSvgImgPath ?? "assets/images/Icons/SvgIcons/bullet.svg"),
        ),
        CText(
          msg: msg ?? "Please Send Your Message",
          fontFamily: "Poppins-SemiBold",
          fontSize: 3.5.sp,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
