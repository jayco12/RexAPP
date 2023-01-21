import 'package:flutter/material.dart';
import 'package:rex/components/header&footer/base_button.dart';
import 'package:rex/components/utilities/rex_colors.dart';
import 'package:lottie/lottie.dart';
import 'package:rex/screens/home_page.dart';

class SplashView extends StatefulWidget {
  static const String id = 'splash_view';

  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) =>  BaseButton(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: RexColors.pageColor,
      body: Lottie.asset(
        'splashScreen.mp4',
        width: 200,
        height: 200,
        fit: BoxFit.fill,
      )
    );
  }
}

//TODO: flutter_native_splash - package for the splash screen.
//TODO: Use the video instead for splash screen (https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwid1Kiph5L6AhX5QPEDHZxUBwcQFnoECAoQAQ&url=https%3A%2F%2Fstackoverflow.com%2Fquestions%2F69173218%2Fvideo-player-for-splash-screen-in-flutter&usg=AOvVaw0L6HP-_932cqw4l14egVeW).