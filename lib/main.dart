import 'package:flutter/material.dart';
import 'package:rex/first_page.dart';

void main() {
  runApp(const Rex(),);
}

class Rex extends StatelessWidget {
  const Rex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        appBarTheme: AppBarTheme(
          color: Color(0xFFEDC75C),
        ),
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xFFFFFFFF),
        ),
      ),
      home: FirstPage(),
    );
  }
}
