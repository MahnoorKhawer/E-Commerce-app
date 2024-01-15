import 'package:flutter/material.dart';
import 'package:ui_development/config/colors.dart';
import 'package:ui_development/screens/bag/bag_screen.dart';
class SuccessSecond extends StatefulWidget {
  const SuccessSecond({super.key});

  @override
  State<SuccessSecond> createState() => _SuccessSecondState();
}

class _SuccessSecondState extends State<SuccessSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 60,),
              Image(image: AssetImage('assets/images/success2.png')),
              SizedBox(height: 20,),
              Text('Success!',style: TextStyle(color: AppColors.black,fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text('Your order will be delivered soon.\n Thank you for choosing our app!',style: TextStyle(color: AppColors.black,fontSize: 16),),
              SizedBox(height: 150,),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>MyBag()));
                },
                style: ElevatedButton.styleFrom(
                  primary: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 90, vertical: 15),
                ),
                child: Text(
                  'CONTINUE SHOPPING',
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
