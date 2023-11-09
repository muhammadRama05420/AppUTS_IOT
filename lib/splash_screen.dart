import 'dart:async';

import 'package:calculator/home.dart';
import 'package:calculator/login.dart';
import 'package:calculator/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration (seconds: 3), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loginPage ())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           new Image.asset('images/itenaspng.png',height: 300.0,width: 300.0,),
          ],
        ),
      
      ),
    );
  }
}