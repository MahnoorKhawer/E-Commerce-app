import 'package:flutter/material.dart';
import 'package:ui_development/config/colors.dart';
import 'package:ui_development/screens/bag/bag_screen.dart';
class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>MyBag()));
            },
            icon: Icon(Icons.arrow_back_ios,color: AppColors.black,)),
        title: Text('Checkout',style: TextStyle(color: AppColors.black,fontSize: 22),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Shipping address',style: TextStyle(color: AppColors.black,fontSize: 20),),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 100,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Jane Doe',style: TextStyle(color: AppColors.black),),
                        TextButton(
                            onPressed: (){},
                            child: Text('Change',style: TextStyle(color: AppColors.primaryColor),)),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('3 Newbridge Court',style: TextStyle(color: AppColors.black),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('Chino Hills, CA 91709, United States',style: TextStyle(color: AppColors.black),),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 100,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Payment',style: TextStyle(color: AppColors.black,fontSize: 18),),
                        TextButton(
                            onPressed: (){},
                            child: Text('Change',style: TextStyle(color: AppColors.primaryColor),)),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Image(image: AssetImage('assets/images/mastercardd.png'),height: 40,width: 50,),
                        SizedBox(width: 15,),
                        Text('**** **** **** 3947',style: TextStyle(color: AppColors.black,fontSize: 16),),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Text('Delivery method',style: TextStyle(color: AppColors.black,fontSize: 18),),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Image(image: AssetImage('assets/images/check1.png')),
                    Image(image: AssetImage('assets/images/check2.png')),
                    Image(image: AssetImage('assets/images/check3.png')),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order:',style: TextStyle(color: AppColors.hintTextColor),),
                  Text('4700 Rs.',style: TextStyle(color: AppColors.black)),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery:',style: TextStyle(color: AppColors.hintTextColor),),
                  Text('150 Rs.',style: TextStyle(color: AppColors.black)),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Summary:',style: TextStyle(color: AppColors.hintTextColor),),
                  Text('4850 Rs.',style: TextStyle(color: AppColors.black)),
                ],
              ),
              SizedBox(height: 20,),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Order Submit'),
                          content: Text('Your order has been submitted successfully!.'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder:(context)=>MyBag()));
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                  ),
                  child: Text(
                    'SUBMIT ORDER',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                    ),
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
