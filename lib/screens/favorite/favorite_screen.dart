
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui_development/config/colors.dart';
import 'package:ui_development/screens/Main_Screen.dart';
import 'package:ui_development/screens/bag/bag_screen.dart';
import 'package:ui_development/screens/catagories/shopping_screen.dart';
import 'package:ui_development/screens/profile/profile_screen.dart';
class MyFavorites extends StatefulWidget {
  const MyFavorites({super.key});

  @override
  State<MyFavorites> createState() => _MyFavoritesState();
}

class _MyFavoritesState extends State<MyFavorites> {
  bool isSearching = false;
  TextEditingController searchController = TextEditingController();
  int myindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isSearching
            ? TextField(
          controller: searchController,
          decoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(color: AppColors.black),
          ),
          onChanged: (value) {},
        )
            : Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
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
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Text('Favorites',style: TextStyle(color: AppColors.black,fontSize: 24,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.black,
                            onPrimary: AppColors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          ),
                          child: Text(
                            'Summer',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.black,
                            onPrimary: AppColors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          ),
                          child: Text(
                            'T-Shirts',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.black,
                            onPrimary: AppColors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          ),
                          child: Text(
                            'Shirts',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.black,
                            onPrimary: AppColors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          ),
                          child: Text(
                            'Fashion',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Container(
                width: double.infinity,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.filter_list_sharp,color: AppColors.black,)),
                        SizedBox(width: 5,),
                        Text('Filters',style: TextStyle(color: AppColors.black,fontSize: 12),),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.compare_arrows,color: AppColors.black,)),
                        SizedBox(width: 5,),
                        Text('Price: lowest to high',style: TextStyle(color: AppColors.black,fontSize: 12),),
                      ],
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.list,color: AppColors.black,))
                  ],
                ),
              ),
              SizedBox(height: 10),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    color: AppColors.formColor,
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/images/favorite1.png'), fit: BoxFit.fill,),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('LIME',style: TextStyle(color: AppColors.hintTextColor,fontSize: 12),),
                                  Icon(Icons.cancel_outlined,color: AppColors.hintTextColor,size: 18,),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text('Shirt',style: TextStyle(color: AppColors.black,fontSize: 14),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text('Color:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                                  SizedBox(width: 3,),
                                  Text('Blue',style: TextStyle(color: AppColors.black,fontSize: 10),),
                                  SizedBox(width: 16,),
                                  Text('Size: L',style: TextStyle(color: AppColors.black,fontSize: 10),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text('3200 Rs.',style: TextStyle(color: AppColors.black,fontSize: 14),),
                                  SizedBox(width: 16,),
                                  RatingBar.builder(
                                    itemSize: 12,
                                    initialRating: 5,
                                    minRating: 0,
                                    direction: Axis.horizontal,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 2.0,
                    right: 8.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.red,
                        onPrimary: AppColors.white,
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(10.0),
                      ),
                      child: Icon(Icons.shopping_bag,size: 18,),
                    )

                  ),
                ],
              ),
              SizedBox(height: 10,),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    color: AppColors.formColor,
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/images/favorite2.png'), fit: BoxFit.fill,),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Mango',style: TextStyle(color: AppColors.hintTextColor,fontSize: 12),),
                                  Icon(Icons.cancel_outlined,color: AppColors.hintTextColor,size: 18,),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text('Longsleeve Violeta',style: TextStyle(color: AppColors.black,fontSize: 14),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text('Color:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                                  SizedBox(width: 3,),
                                  Text('Orange',style: TextStyle(color: AppColors.black,fontSize: 10),),
                                  SizedBox(width: 16,),
                                  Text('Size: S',style: TextStyle(color: AppColors.black,fontSize: 10),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text('4600 Rs.',style: TextStyle(color: AppColors.black,fontSize: 14),),
                                  SizedBox(width: 16,),
                                  RatingBar.builder(
                                    itemSize: 12,
                                    initialRating: 0,
                                    minRating: 0,
                                    direction: Axis.horizontal,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 2.0,
                      right: 8.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.red,
                          onPrimary: AppColors.white,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10.0),
                        ),
                        child: Icon(Icons.shopping_bag,size: 18,),
                      )

                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                    width: double.infinity,
                    height: 150,
                    color: AppColors.formColor,
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/images/orderdetail.png'), fit: BoxFit.fill,),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('&Berries',style: TextStyle(color: AppColors.hintTextColor,fontSize: 12),),
                                  Icon(Icons.cancel_outlined,color: AppColors.hintTextColor,size: 18,),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text('T-Shirt',style: TextStyle(color: AppColors.black,fontSize: 14),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text('Color:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                                  SizedBox(width: 3,),
                                  Text('Black',style: TextStyle(color: AppColors.black,fontSize: 10),),
                                  SizedBox(width: 16,),
                                  Text('Size: S',style: TextStyle(color: AppColors.black,fontSize: 10),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text('3900 Rs.',style: TextStyle(color: AppColors.black,fontSize: 14),),
                                  SizedBox(width: 16,),
                                  RatingBar.builder(
                                    itemSize: 12,
                                    initialRating: 5,
                                    minRating: 0,
                                    direction: Axis.horizontal,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 150,
                color: AppColors.formColor,
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/bag2.png'), fit: BoxFit.fill,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Olivier',style: TextStyle(color: AppColors.hintTextColor,fontSize: 12),),
                              Icon(Icons.cancel_outlined,color: AppColors.hintTextColor,size: 18,),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text('Shirt',style: TextStyle(color: AppColors.black,fontSize: 14),),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text('Color:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                              SizedBox(width: 3,),
                              Text('Gray',style: TextStyle(color: AppColors.black,fontSize: 10),),
                              SizedBox(width: 16,),
                              Text('Size: L',style: TextStyle(color: AppColors.black,fontSize: 10),),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text('5200 Rs.',style: TextStyle(color: AppColors.black,fontSize: 14),),
                              SizedBox(width: 16,),
                              RatingBar.builder(
                                itemSize: 12,
                                initialRating: 3,
                                minRating: 0,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    color: AppColors.formColor,
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/images/favorite2.png'), fit: BoxFit.fill,),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Mango',style: TextStyle(color: AppColors.hintTextColor,fontSize: 12),),
                                  Icon(Icons.cancel_outlined,color: AppColors.hintTextColor,size: 18,),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text('Longsleeve Violeta',style: TextStyle(color: AppColors.black,fontSize: 14),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text('Color:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                                  SizedBox(width: 3,),
                                  Text('Orange',style: TextStyle(color: AppColors.black,fontSize: 10),),
                                  SizedBox(width: 16,),
                                  Text('Size: S',style: TextStyle(color: AppColors.black,fontSize: 10),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text('4600 Rs.',style: TextStyle(color: AppColors.black,fontSize: 14),),
                                  SizedBox(width: 16,),
                                  RatingBar.builder(
                                    itemSize: 12,
                                    initialRating: 0,
                                    minRating: 0,
                                    direction: Axis.horizontal,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 2.0,
                      right: 8.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.red,
                          onPrimary: AppColors.white,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10.0),
                        ),
                        child: Icon(Icons.shopping_bag,size: 18,),
                      )

                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 150,
                color: AppColors.formColor,
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/orderdetail.png'), fit: BoxFit.fill,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('&Berries',style: TextStyle(color: AppColors.hintTextColor,fontSize: 12),),
                              Icon(Icons.cancel_outlined,color: AppColors.hintTextColor,size: 18,),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text('T-Shirt',style: TextStyle(color: AppColors.black,fontSize: 14),),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text('Color:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                              SizedBox(width: 3,),
                              Text('Black',style: TextStyle(color: AppColors.black,fontSize: 10),),
                              SizedBox(width: 16,),
                              Text('Size: S',style: TextStyle(color: AppColors.black,fontSize: 10),),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text('3900 Rs.',style: TextStyle(color: AppColors.black,fontSize: 14),),
                              SizedBox(width: 16,),
                              RatingBar.builder(
                                itemSize: 12,
                                initialRating: 5,
                                minRating: 0,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
