import 'package:doctor/features/live_chat/presentation/controller/live_chat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

// class LiveChat extends GetView<LiveChatControllerImp> {
//   const LiveChat({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     Get.put(LiveChatControllerImp());
//     return GetBuilder<LiveChatControllerImp>(
//       builder: (controller) => const Scaffold(),
//     );
//   }
// }

class LiveChat extends StatefulWidget {
  const LiveChat({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LiveChatState createState() => _LiveChatState();
}

class _LiveChatState extends State<LiveChat> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
        Uri.parse('http://your-backend-server-ip:8080/live/stream.m3u8'))
      ..initialize().then((_) {
        setState(() {});
      });
    _controller.setLooping(true);
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LiveChatControllerImp>(
      builder: (controller) => Scaffold(
        body: Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : const CircularProgressIndicator(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
