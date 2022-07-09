import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:lie_detection_web/helper/style.dart';
import 'package:lie_detection_web/widgets/player_controller.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:video_player/video_player.dart';

Map<String, dynamic> videoData = {
  "items": [
    {
      "title": "Demo Video",
      "image": "images/rio_from_above_poster.jpg",
      "url":
          "https://github.com/GeekyAnts/flick-video-player-demo-videos/blob/master/example/rio_from_above_compressed.mp4?raw=true",
    },
  ]
};

class WebVideoPlayer extends StatefulWidget {
  const WebVideoPlayer({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _WebVideoPlayerState createState() => _WebVideoPlayerState();
}

class _WebVideoPlayerState extends State<WebVideoPlayer> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
          VideoPlayerController.network(videoData["items"][0]["url"]),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: ObjectKey(flickManager),
      onVisibilityChanged: (visibility) {
        if (visibility.visibleFraction == 0 && mounted) {
          flickManager.flickControlManager?.autoPause();
        } else if (visibility.visibleFraction == 1) {
          flickManager.flickControlManager?.autoResume();
        }
      },
      child: FlickVideoPlayer(
        flickManager: flickManager,
        flickVideoWithControls: FlickVideoWithControls(
          controls: WebVideoControl(
            iconSize: 30,
            fontSize: 14,
            progressBarSettings: FlickProgressBarSettings(
              height: 5,
              handleRadius: 5.5,
            ),
          ),
          videoFit: BoxFit.contain,
          backgroundColor: colorPrimary,
          // aspectRatioWhenLoading: 4 / 3,
        ),
      ),
    );
  }
}
