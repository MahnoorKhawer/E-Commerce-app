import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_development/screens/bag/check_order.dart';
import 'package:ui_development/screens/favorite/favorite_grid_screen.dart';

import 'package:ui_development/config/assets.dart';
import 'package:ui_development/config/colors.dart';
import 'package:ui_development/screens/authentication/signup/sign_up.dart';
import 'package:ui_development/screens/bag/bag_screen.dart';
import 'package:ui_development/screens/bag/succes_screen_first.dart';
import 'package:ui_development/screens/bag/success_screen_second.dart';
import 'package:ui_development/screens/favorite/favorite_screen.dart';
import 'package:ui_development/screens/profile/payment/payment_method.dart';
import 'package:ui_development/screens/profile/reviews/reviews_screen.dart';
import 'package:ui_development/screens/profile/setting/setting_info.dart';
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
        Navigator.push(context, MaterialPageRoute(builder:(context)=>FavoriteGrid())),);}
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