import 'package:flutter/material.dart';
import 'package:nykaa_app/utils/constants/color_constants.dart';
import 'package:nykaa_app/view/bottom_navigation/bottom_navigation.dart';
import 'package:nykaa_app/view/home_screen/homescreen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => BottomNavigation()),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primarycolor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  "https://img.utdstc.com/icon/53e/96f/53e96f78978fa5549c6712183f2cd1c2464b3c8ac425880f239881bd41e43a97:200",
                ),
                fit: BoxFit.fill)),
      ),
    );
  }
}
