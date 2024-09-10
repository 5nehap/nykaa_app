import 'package:flutter/material.dart';
import 'package:nykaa_app/view/categories/categories.dart';
import 'package:nykaa_app/view/home_screen/homescreen.dart';
import 'package:nykaa_app/view/offers_screen/offerlist_screen.dart';
import 'package:nykaa_app/view/offers_screen/offers_screen.dart';
import 'package:nykaa_app/view/play_screen/play_screen.dart';
// import 'package:nykaa_app/view/splash_page/splash%20_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;

  List screens = [
    Homescreen(),
    OffersScreen(),
   Categories(),
   PlayScreen(),
    Container(
      color: Colors.black,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined,), label: "Beuty"),
            BottomNavigationBarItem(
                icon: Icon(Icons.rounded_corner_outlined), label: "offers"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "categories"),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_arrow_outlined), label: "play"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ]),
    );
  }
}
