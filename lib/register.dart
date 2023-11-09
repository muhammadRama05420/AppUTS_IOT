import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Create A New Account', style: whiteTextStyle.copyWith(fontSize: 26,fontWeight: bold),
        textAlign: TextAlign.center,),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios),),
        
        backgroundColor: backgroundColor,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child:Container(
          margin: EdgeInsets.only(left: 44,right: 34),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 92,),
              Text('Username',style:whiteTextStyle.copyWith(fontSize: 18,),),
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
              Text('Email Address',style:whiteTextStyle.copyWith(fontSize: 18,),),
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
              Text('Password',style:whiteTextStyle.copyWith(fontSize: 18,),),
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
              SizedBox(
                    height: 23,
                  ),  
              Text('Confirm Password',style:whiteTextStyle.copyWith(fontSize: 18,),),
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
              SizedBox(
                    height: 53,
                  ),  
              Row(
                mainAxisAlignment:MainAxisAlignment.end,
                crossAxisAlignment:CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: (){}, child: Text('Register', style: purpleTextStyle.copyWith(fontSize: 12,fontWeight: bold,),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: whiteColor,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 49,),
                    ),
                    ),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}