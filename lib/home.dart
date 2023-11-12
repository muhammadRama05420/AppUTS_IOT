import 'package:calculator/Components/bottom_nav_bar.dart';
import 'package:calculator/Profile/profile.dart';
import 'package:calculator/calculator.dart';
import './Profile/profile.dart';
import './constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeApps extends StatefulWidget {
  const HomeApps({super.key});

  @override
  State<HomeApps> createState() => _HomeAppsState();
}

class _HomeAppsState extends State<HomeApps> {

  //Navigate Bottom bar
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
      onTabChange: (index) => navigateBottomBar(index),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black,width: 1.0)
          ),
        ),
      ),
    );
  }  
}