import 'package:flutter/material.dart';
import 'package:ui_development/config/colors.dart';
import 'package:ui_development/screens/bag/bag_screen.dart';

class SuccessFirst extends StatefulWidget {
  const SuccessFirst({super.key});

  @override
  State<SuccessFirst> createState() => _SuccessFirstState();
}

class _SuccessFirstState extends State<SuccessFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/success.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80,),
              Text(
                'Success!',
                style: TextStyle(color: AppColors.black, fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(height: 20,),
              Text(
                'Your order will be delivered soon\n Thank you for choosing our app!',
                style: TextStyle(color: AppColors.black, fontSize: 18),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>MyBag()));
                },
                style: ElevatedButton.styleFrom(
                  primary: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                ),
                child: Text(
                  'Continue shopping',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

