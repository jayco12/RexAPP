import 'package:flutter/material.dart';
import 'package:rex/components/rex_colors.dart';
import 'package:rex/views/home_page.dart';

class SplashView extends StatefulWidget {
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
            builder: (_) => const HomePage(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RexColors.pageColor,
      body: Container(
        child: Center(
            child: Image.asset('images/Rex logo.png'),
          ),
      ),

    );
  }
}