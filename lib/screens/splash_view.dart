import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SplashView extends StatefulWidget {

  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _controller = VideoPlayerController.asset('videos/splashScreen.mp4')
        ..initialize().then((_) => setState(() {}))
        ..play();

      _controller?.addListener(() {
        if (_controller?.value.isPlaying == false) {
          context.router.replaceNamed(
              '/base-button'
          );
        }
      });

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        body: Center(
          child: _controller?.value.isInitialized ?? false
              ? AspectRatio(
                  aspectRatio: _controller?.value.aspectRatio ?? 1,
                  child: _controller == null
                      ? const SizedBox()
                      : VideoPlayer(_controller!),
                )
              : Container(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller?.dispose();

    super.dispose();
  }
}

//TODO: flutter_native_splash - package for the splash screen.
//TODO: Use the video instead for splash screen (https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwid1Kiph5L6AhX5QPEDHZxUBwcQFnoECAoQAQ&url=https%3A%2F%2Fstackoverflow.com%2Fquestions%2F69173218%2Fvideo-player-for-splash-screen-in-flutter&usg=AOvVaw0L6HP-_932cqw4l14egVeW).
