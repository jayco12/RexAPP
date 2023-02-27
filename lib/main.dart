import 'package:flutter/material.dart';
import 'package:rex/routes/app_router.gr.dart';
import 'package:rex/screens/gaz_form.dart';
import 'package:rex/screens/gaz_page.dart';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rex',
      home: GazPage(),
    );
    // return MaterialApp.router(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Rex',
    //
    //   routerDelegate: _appRouter.delegate(),
    //   routeInformationParser: _appRouter.defaultRouteParser(),
    // );
  }
}
