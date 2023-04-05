import 'dart:core';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:rex/components/header_footer/base_button.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 5),
    ).then(
      (value) => context.router.replaceNamed('/base-button'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 200.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/logo.png'),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 300,
                width: 300,
                child: AnimatedSplashScreen(
                  splash: Column(
                    children: [
                      Image.asset('images/name.png'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130.0),
                        child: Image.asset('images/nif.png'),
                      ),
                    ],
                  ),
                  backgroundColor: Colors.transparent,
                  animationDuration: const Duration(seconds: 3),
                  duration: 3200,
                  nextScreen: const BaseButton(),
                  splashTransition: SplashTransition.slideTransition,
                  pageTransitionType: PageTransitionType.fade,
                  splashIconSize: 290,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
