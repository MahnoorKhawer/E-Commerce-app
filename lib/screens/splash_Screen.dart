import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_development/screens/authentication/login/login_screen.dart';

import 'package:ui_development/config/assets.dart';
import 'package:ui_development/config/colors.dart';
import 'package:ui_development/screens/authentication/signup/sign_up.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState  extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:4), ()=>
        Navigator.push(context, MaterialPageRoute(builder:(context)=>SignUpScreen())),);}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [AppColors.white,AppColors.white],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              )
          ),

          child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(ImageAssets.newlogo,
                  width: 147,
                  height: 147,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}