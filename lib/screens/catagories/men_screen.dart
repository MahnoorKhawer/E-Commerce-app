import 'package:flutter/material.dart';
import 'package:ui_development/config/colors.dart';
import 'package:ui_development/screens/Main_Screen.dart';
import 'package:ui_development/screens/bag_screen.dart';
import 'package:ui_development/screens/favorite_screen.dart';
import 'package:ui_development/screens/kids_screen.dart';
import 'package:ui_development/screens/profile_screen.dart';
import 'package:ui_development/screens/shopping_screen.dart';
class MenScreen extends StatefulWidget {
  const MenScreen({super.key});

  @override
  State<MenScreen> createState() => _MenScreenState();
}

class _MenScreenState extends State<MenScreen> {
  bool isSearching = false;
  TextEditingController searchController = TextEditingController();
  int myindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: AppColors.black),
        ),
        title: isSearching
            ? TextField(
          controller: searchController,
          decoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(color: AppColors.black),
          ),
          onChanged: (value) {
            // Handle search as the user types
          },
        )
            : Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Categories',
              style: TextStyle(color: AppColors.black),
            ),
            SizedBox(
              width: 80,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  isSearching = true;
                });
              },
              icon: Icon(Icons.search, color: AppColors.black),
            )
          ],
        ),
        centerTitle: true,
        actions: [
          isSearching
              ? IconButton(
            onPressed: () {
              setState(() {
                isSearching = false;
                searchController.clear();
              });
            },
            icon: Icon(Icons.close, color: AppColors.black),
          )
              : Container(),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>MyShoppingCart()));
                      }, child: Text('Women',style: TextStyle(color: AppColors.black,fontSize: 18),)),
                      SizedBox(width: 10,),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>MenScreen()));
                      }, child: Text('Men',style: TextStyle(color: AppColors.black,fontSize: 18),)),
                      SizedBox(width: 10,),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>KidsScreen()));
                      }, child: Text('Kids',style: TextStyle(color: AppColors.black,fontSize: 18),)),

                    ],
                  ),
                ),
                SizedBox(height: 5,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    color: AppColors.primaryColor,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(' Summer Sale',style: TextStyle(color: AppColors.white,fontSize: 25.0),),
                          SizedBox(height: 3,),
                          Text('Upto 50% off',style: TextStyle(color: AppColors.white,fontSize: 18.0),)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: AppColors.formColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 10,),
                      TextButton(child: Text('New',style: TextStyle(color: AppColors.black,fontSize: 18)),
                        onPressed: () {  },),
                      Image(image: AssetImage('assets/images/newmen.png'),fit: BoxFit.fill,),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: AppColors.formColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 10,),
                      TextButton(child: Text('Clothes',style: TextStyle(color: AppColors.black,fontSize: 18)),
                        onPressed: () {  },),
                      Image(image: AssetImage('assets/images/menclothes.png'),fit: BoxFit.fill,),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: AppColors.formColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 10,),
                      TextButton(child: Text('Shoes',style: TextStyle(color: AppColors.black,fontSize: 18)),
                        onPressed: () {  },),
                      Image(image: AssetImage('assets/images/menshoes.png'),fit: BoxFit.fill,),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: AppColors.formColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 10,),
                      TextButton(child: Text('Accesories',style: TextStyle(color: AppColors.black,fontSize: 18)),
                        onPressed: () {  },),
                      Image(image: AssetImage('assets/images/menaccesories.png'),fit: BoxFit.fill,),
                    ],
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
              icon: Icon(Icons.home_outlined),
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
              icon: Icon(Icons.person_outlined),
            ),
            label: 'Profile',),
        ],
      ),
    );
  }
}