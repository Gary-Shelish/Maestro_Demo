import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BasicOverlayWidget extends StatefulWidget {
  final VideoPlayerController controller;

  const BasicOverlayWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<BasicOverlayWidget> createState() => _BasicOverlayWidgetState();
}

class _BasicOverlayWidgetState extends State<BasicOverlayWidget> {
  @override
  void initState() {
    widget.controller.addListener(_onControllerValueChanged);
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onControllerValueChanged);
    super.dispose();
  }

  void _onControllerValueChanged() {
    if (widget.controller.value.isInitialized) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    print('isPlaying? ${widget.controller.value.isPlaying}');
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => widget.controller.value.isPlaying
          ? widget.controller.pause()
          : widget.controller.play(),
      child: Stack(
        children: <Widget>[
          buildPlay(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: buildIndicator(),
          ),
        ],
      ),
    );
  }

  Widget buildIndicator() =>
      VideoProgressIndicator(widget.controller, allowScrubbing: true);

  Widget buildPlay() => widget.controller.value.isPlaying
      ? Container()
      : Container(
          alignment: Alignment.center,
          color: Colors.black26,
          child: const Icon(Icons.play_arrow, color: Colors.white, size: 80),
        );
}
