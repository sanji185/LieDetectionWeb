import 'package:flutter/material.dart';
import 'package:lie_detection_web/widgets/player.dart';
import 'package:sizer/sizer.dart';

class MYVideoPlayer extends StatelessWidget {
  final Map<String, dynamic> videoData;
  final EdgeInsetsGeometry? padding;
  final int? flex;
  const MYVideoPlayer(
      {Key? key, this.flex, required this.videoData, this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: Padding(
        padding: padding ?? EdgeInsets.fromLTRB(5.sp, 0, 5.sp, 5.sp),
        child: WebVideoPlayer(
          videoData: videoData,
        ),
      ),
    );
  }
}
