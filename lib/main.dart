import 'package:calculator/Calculator_bmi/Results_Page.dart';
import 'package:calculator/constants.dart';
import 'package:calculator/splash_screen.dart';
import './Calculator_bmi/Results_Page.dart';
import './Calculator_bmi/input_page.dart';
import 'package:flutter/material.dart';
import 'package:calculator/calculator.dart';
import './home.dart';
import 'Profile/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
      primaryColor: Color(0xffffffff),
      scaffoldBackgroundColor: Color(0xffffffffff),
      ),
    );
  }
}