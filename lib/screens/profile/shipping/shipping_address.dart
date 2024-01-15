import 'package:flutter/material.dart';
import 'package:ui_development/config/colors.dart';
import 'package:ui_development/screens/profile/profile_screen.dart';
import 'package:ui_development/screens/profile/shipping/Adding_shipAddress.dart';
class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  bool isChecked=false;
  bool isCheckedtwo=false;
  bool isCheckedthree= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>MyProfile()));
            },
            icon: Icon(Icons.arrow_back_ios,color: AppColors.black,)),
        title: Text('Shipping Addresses',style: TextStyle(color: AppColors.black,fontSize: 18),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.formColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Jane Doe',style: TextStyle(color: AppColors.black),),
                            TextButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder:(context)=>AddingAddress()));
                                },
                                child: Text('Edit',style: TextStyle(color: AppColors.primaryColor),))
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('3 Newbridge Court',style: TextStyle(color: AppColors.black),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Chino Hills, CA 91709, United States',style: TextStyle(color: AppColors.black),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (newValue) {
                                setState(() {
                                  isChecked = newValue!;
                                });
                              },
                              activeColor: Colors.black,
                              checkColor: Colors.white,
                            ),

                            SizedBox(width: 5,),
                            Text('Use as the shipping address'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.formColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Jane Doe',style: TextStyle(color: AppColors.black),),
                            TextButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder:(context)=>AddingAddress()));
                                },
                                child: Text('Edit',style: TextStyle(color: AppColors.primaryColor),))
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('3 Newbridge Court',style: TextStyle(color: AppColors.black),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Chino Hills, CA 91709, United States',style: TextStyle(color: AppColors.black),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Checkbox(
                              value: isCheckedtwo,
                              onChanged: (newValue) {
                                setState(() {
                                  isCheckedtwo = newValue!;
                                });
                              },
                              activeColor: Colors.black,
                              checkColor: Colors.white,
                            ),

                            SizedBox(width: 5,),
                            Text('Use as the shipping address'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.formColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Jane Doe',style: TextStyle(color: AppColors.black),),
                            TextButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder:(context)=>AddingAddress()));
                                },
                                child: Text('Edit',style: TextStyle(color: AppColors.primaryColor),))
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('3 Newbridge Court',style: TextStyle(color: AppColors.black),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Chino Hills, CA 91709, United States',style: TextStyle(color: AppColors.black),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Checkbox(
                              value: isCheckedthree,
                              onChanged: (newValue) {
                                setState(() {
                                  isCheckedthree = newValue!;
                                });
                              },
                              activeColor: Colors.black,
                              checkColor: Colors.white,
                            ),

                            SizedBox(width: 5,),
                            Text('Use as the shipping address'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.black,
        foregroundColor: AppColors.white,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder:(context)=>AddingAddress()));
        },
        child: Text('+', style: TextStyle(fontSize: 20)),
        shape: CircleBorder(),
      ),
    );
  }
}
