import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Center(
      

              
      child: Container(
        child: Align(
          alignment: Alignment.bottomCenter,
          child:
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xFFEB1555),
              ),
            ),
          ),
        ),
      ),
    );
  }
}