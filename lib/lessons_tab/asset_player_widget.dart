import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maestrohomescreen/providers.dart';
import 'package:video_player/video_player.dart';
import 'package:maestrohomescreen/lessons_tab/video_player_widget.dart';
import 'package:maestrohomescreen/levels/C_Test.dart';

class AssetPlayerWidget extends ConsumerStatefulWidget {
  const AssetPlayerWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<AssetPlayerWidget> createState() => _AssetPlayerWidgetState();
}

class _AssetPlayerWidgetState extends ConsumerState<AssetPlayerWidget> {
  late VideoPlayerController controller;
  late VoidCallback _listener;

  @override
  void initState() {
    super.initState();
    final asset = ref.read(videoPlayerProvider).location;
    controller = VideoPlayerController.asset(asset);
    _listener = () {
      if (controller.value.isPlaying &&
          controller.value.isInitialized &&
          (controller.value.position >=
              controller.value.duration - const Duration(milliseconds: 600))) {
        controller.pause();
        //setState(() {});
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CTest()),
        );
      }
    };
    controller.addListener(_listener);
    // controller.initialize();
    controller.play();
  }

  @override
  void dispose() {
    controller.removeListener(_listener);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMuted = controller.value.volume == 0;
    return FutureBuilder<void>(
        future: controller.initialize(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SizedBox();
          }
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            backgroundColor: Colors.black,
            body: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                      width: 400,
                      child: VideoPlayerWidget(controller: controller)),
                ),
                const SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: const Color(0xff565454),
                    child: IconButton(
                      icon: Icon(
                        isMuted ? Icons.volume_mute : Icons.volume_up,
                        color: Colors.white,
                      ),
                      onPressed: () => controller.setVolume(isMuted ? 1 : 0),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
