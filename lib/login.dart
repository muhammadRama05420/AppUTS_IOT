import 'package:calculator/home.dart';
import 'package:calculator/register.dart';

import './constants.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 41),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("App UTS", style: whiteTextStyle.copyWith(fontSize: 40, fontWeight: bold),),
              SizedBox(height:109),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text('Username', style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: semibold),),
                  SizedBox(height: 10,),    
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: columnColor,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      ),
                  ),
                  ),

                  SizedBox(
                    height: 23,
                  ),  

                  Text('Password', style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: semibold),),
                  SizedBox(height: 10,),    
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: columnColor,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        suffixIcon: Icon(Icons.visibility_off),

                      ),
                  ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: columnColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      SizedBox(width: 12,),
                      Text('Remember me', style: whiteTextStyle.copyWith(fontSize: 12,),),
                    ],
                  ),
                  Text('Forgot Password ?', style: whiteTextStyle.copyWith(fontSize: 12),),
                ],
              ),

              SizedBox(height: 32,),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                
                children: [
                  ElevatedButton(
                    
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const registerPage(),),);
                    }, 
                    child: Text('Register', style: purpleTextStyle.copyWith(fontSize: 12,fontWeight: bold,),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: whiteColor,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 49,),
                    ),
                    ),
                  SizedBox(width: 9,),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeApps(),),);
                    }, 
                      child: Text('Log In', style: purpleTextStyle.copyWith(fontSize: 12,fontWeight: bold,),),
                      style: ElevatedButton.styleFrom(
                      backgroundColor: whiteColor,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 40,),
                    ),
                    ),
                ],
              ),
              

            ],
          ),
        ),
      ),
    );
  }
}