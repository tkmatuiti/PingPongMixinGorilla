import 'package:flutter/material.dart';
import 'package:pingpong_mixingorilla/screens/bottom_navigation_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PingPongMixinGorilla',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.amberAccent,
        accentColor: Colors.white10,
        primarySwatch: Colors.orange,
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(11)),
          ),
        ),
        fontFamily: "DoraQue",
      ),
      home: BottomNavigationPage(),
    );
  }
}
