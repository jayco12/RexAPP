import 'package:flutter/material.dart';
import 'package:rex/routes/app_router.gr.dart';
// import 'package:rex/screens/splash_view.dart';

void main() {
  runApp(
    Rex(),
  );
}

class Rex extends StatelessWidget {
  Rex({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Rex',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );

      // MaterialApp(
      //   debugShowCheckedModeBanner: false,
      //   title: 'Rex',
      //   home: SplashView(),
      // );
  }
}
