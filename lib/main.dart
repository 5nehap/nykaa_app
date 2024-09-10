import 'package:flutter/material.dart';
import 'package:nykaa_app/view/bottom_navigation/bottom_navigation.dart';
import 'package:nykaa_app/view/home_screen/homescreen.dart';
import 'package:nykaa_app/view/splash_page/splash_page.dart';

// import 'package:nykaa_app/view/splash_page/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
