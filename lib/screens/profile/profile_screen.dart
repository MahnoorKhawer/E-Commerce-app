import 'package:flutter/material.dart';
import 'package:ui_development/config/colors.dart';
import 'package:ui_development/screens/Main_Screen.dart';
import 'package:ui_development/screens/bag/bag_screen.dart';
import 'package:ui_development/screens/catagories/shopping_screen.dart';
import 'package:ui_development/screens/favorite/favorite_screen.dart';
import 'package:ui_development/screens/profile/order/my-orders.dart';
import 'package:ui_development/screens/profile/payment/payment_method.dart';
import 'package:ui_development/screens/profile/reviews/reviews_screen.dart';
import 'package:ui_development/screens/profile/setting/setting_info.dart';
import 'package:ui_development/screens/profile/shipping/shipping_address.dart';
class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  int myindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: AppColors.black,size: 20,),
        ),
        title: Text('My Profile',style: TextStyle(color: AppColors.black,fontSize: 25),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                    title: Text('Matilda Brown',style: TextStyle(color: AppColors.black),),
                    subtitle: Text('matildabrown@gmail.com',style: TextStyle(color: AppColors.hintTextColor),),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: ListTile(
                    title: Text('My orders',style: TextStyle(color: AppColors.black),),
                    subtitle: Text('Already have 12 orders',style: TextStyle(color: AppColors.hintTextColor),),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>MyOrder()));
                      },
                      icon: Icon(Icons.arrow_forward_ios,color: AppColors.hintTextColor,),),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: ListTile(
                    title: Text('Shipping addresses',style: TextStyle(color: AppColors.black),),
                    subtitle: Text('3 addresses',style: TextStyle(color: AppColors.hintTextColor),),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>ShippingAddress()));
                      },
                      icon: Icon(Icons.arrow_forward_ios,color: AppColors.hintTextColor,),),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: ListTile(
                    title: Text('Payment methods',style: TextStyle(color: AppColors.black),),
                    subtitle: Text('Visa **34',style: TextStyle(color: AppColors.hintTextColor),),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>PaymentMethod()));
                      },
                      icon: Icon(Icons.arrow_forward_ios,color: AppColors.hintTextColor,),),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: ListTile(
                    title: Text('Promocodes',style: TextStyle(color: AppColors.black),),
                    subtitle: Text('You have special promocodes',style: TextStyle(color: AppColors.hintTextColor),),
                    trailing: IconButton(
                      onPressed: () {  },
                      icon: Icon(Icons.arrow_forward_ios,color: AppColors.hintTextColor,),),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: ListTile(
                    title: Text('My reviews',style: TextStyle(color: AppColors.black),),
                    subtitle: Text('Review for 4 items',style: TextStyle(color: AppColors.hintTextColor),),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>ReviewPage()));
                      },
                      icon: Icon(Icons.arrow_forward_ios,color: AppColors.hintTextColor,),),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: ListTile(
                    title: Text('Settings',style: TextStyle(color: AppColors.black),),
                    subtitle: Text('Notifications, password',style: TextStyle(color: AppColors.hintTextColor),),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>MySetting()));
                      },
                      icon: Icon(Icons.arrow_forward_ios,color: AppColors.hintTextColor,),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.textFieldColor,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.black,
        currentIndex: myindex,
        onTap: (index){
          setState(() {
            myindex=index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>MainPage()));
              },
              icon: Icon(Icons.home_outlined,),
            ),
            label: 'Home',),
          BottomNavigationBarItem(
            icon:  IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>MyShoppingCart()));
              },
              icon: Icon(Icons.shopping_cart_outlined,),
            ),
            label: 'Shop',),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>MyBag()));
              },
              icon: Icon(Icons.shopping_bag_outlined,),
            ),
            label: 'Bag',),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>MyFavorites()));
              },
              icon: Icon(Icons.favorite_outline,),
            ),
            label: 'Favorites',),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>MyProfile()));
              },
              icon: Icon(Icons.person_outlined,),
            ),
            label: 'Profile',),
        ],
      ),
    );
  }
}
