import 'package:doctor/core/core/helper/printfun.dart';
import 'package:doctor/core/core/imports/export_path_packages.dart';
import 'package:doctor/core/core/utils/values_manager.dart';
import 'package:doctor/core/widgets/cached_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CustomVideoWidget extends StatefulWidget {
  const CustomVideoWidget({super.key, required this.url, this.aspectRatio});
  final String url;
  final double? aspectRatio;

  @override
  State<CustomVideoWidget> createState() => _CustomVideoWidgetState();
}

class _CustomVideoWidgetState extends State<CustomVideoWidget> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.url
          // 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'
          ),
    )..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        _controller.setLooping(true);
        _controller.play();
        printf("===============================================");
        printf("playvideo:-${widget.url}");
        printf("===============================================");
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio:
                      widget.aspectRatio ?? _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : CachedNetworkImageCustom(
                  url: widget.url,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: (AppSize.s100 * 5.58).h),
        ),
      ],
    );
  }

  @override
  void dispose() {
    printf("==================dispose=============================");
    super.dispose();
    _controller.dispose();
  }
}
