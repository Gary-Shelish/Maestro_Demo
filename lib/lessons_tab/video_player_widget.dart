import 'package:flutter/material.dart';
import 'package:maestrohomescreen/lessons_tab/basic_overlay_widget.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final VideoPlayerController controller;

  const VideoPlayerWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  @override
  Widget build(BuildContext context) => widget.controller.value.isInitialized
      ? buildVideo()
      : const SizedBox(
          height: 50,
          child: Center(child: CircularProgressIndicator()),
        );

  Widget buildVideo() => Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.topLeft,
              child: Container(child: buildVideoPlayer())),
          Positioned.fill(
              child: BasicOverlayWidget(controller: widget.controller)),
        ],
      );

  Widget buildVideoPlayer() => AspectRatio(
        aspectRatio: widget.controller.value.aspectRatio,
        child: VideoPlayer(widget.controller),
      );
}
