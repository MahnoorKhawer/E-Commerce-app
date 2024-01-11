import 'package:flutter/material.dart';
import 'package:ui_development/config/colors.dart';
import 'package:ui_development/screens/Main_Screen.dart';
import 'package:ui_development/screens/bag_screen.dart';
import 'package:ui_development/screens/profile_screen.dart';
import 'package:ui_development/screens/shopping_screen.dart';
class MyFavorites extends StatefulWidget {
  const MyFavorites({super.key});

  @override
  State<MyFavorites> createState() => _MyFavoritesState();
}

class _MyFavoritesState extends State<MyFavorites> {
  int myindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Text('Favorite'),
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
