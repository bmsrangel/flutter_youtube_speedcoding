import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF212121),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF212121),
        ),
        scaffoldBackgroundColor: Color(0xFF212121),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF212121),
          selectedItemColor: Color(0xFFFFFFFF),
          unselectedItemColor: Color(0xFFFFFFFF),
        ),
      ),
      home: HomePage(),
    );
  }
}
