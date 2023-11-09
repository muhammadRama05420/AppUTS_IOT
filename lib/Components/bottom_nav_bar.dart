import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange,});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        color: Colors.grey[400],
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Color(0xFFEB1555),
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: const [
        GButton(
          icon: Icons.home,
          text: 'Home',
        ),
        GButton(
          icon: Icons.portrait,
          text: 'Profile',
        ),
        GButton(
          icon: Icons.settings,
          text: 'Settings',
        ),
        GButton(
          icon: Icons.calculate,
          text: 'Calculator',
        ),
        GButton(
          icon: Icons.person,
          text: 'Calculator BMI',
        ),
      ]),
    );
  }
}