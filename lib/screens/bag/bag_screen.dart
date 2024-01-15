import 'package:flutter/material.dart';
import 'package:ui_development/config/colors.dart';
import 'package:ui_development/config/styles.dart';
import 'package:ui_development/screens/Main_Screen.dart';
import 'package:ui_development/screens/bag/check_order.dart';
import 'package:ui_development/screens/catagories/shopping_screen.dart';
import 'package:ui_development/screens/favorite/favorite_screen.dart';
import 'package:ui_development/screens/profile/profile_screen.dart';
class MyBag extends StatefulWidget {
  const MyBag({super.key});

  @override
  State<MyBag> createState() => _MyBagState();
}

class _MyBagState extends State<MyBag> {
  bool isSearching = false;
  TextEditingController searchController = TextEditingController();
  int myindex=0;
  int counter=1;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 1) {
        counter--;
      }
    });
  }
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
      ),
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.all(20.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text('My Bag',style: TextStyle(color: AppColors.black,fontSize: 24,fontWeight: FontWeight.bold),),
             SizedBox(height: 16,),
             Container(
               width: double.infinity,
               height: 150,
               color: AppColors.formColor,
               child: Row(
                 children: [
                   Image(image: AssetImage('assets/images/bag.png'), fit: BoxFit.fill,),
                   Expanded(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Column(
                                 children: [
                                   Text('Pullover', style: TextStyle(color: AppColors.black, fontSize: 16),),
                                   Text('Color: Black    Size: L', style: TextStyle(color: AppColors.black, fontSize: 10),),
                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Column(
                                 children: [
                                   Icon(Icons.menu, color: AppColors.hintTextColor, size: 25,),
                                 ],
                               ),
                             ),
                           ],
                         ),
                         SizedBox(height: 3,),
                         Row(
                           children: [
                             ElevatedButton(
                               onPressed: decrementCounter,
                               style: ElevatedButton.styleFrom(
                                 shape: CircleBorder(),
                                 padding: EdgeInsets.all(12.0),
                                 primary: AppColors.white,
                               ),
                               child: Icon(
                                 Icons.minimize,
                                 color: AppColors.hintTextColor,
                               ),
                             ),
                             SizedBox(width: 4,),
                             Text(
                               '$counter',
                               style: TextStyle(fontSize: 10),
                             ),
                             SizedBox(width: 4,),
                             ElevatedButton(
                               onPressed: incrementCounter,
                               style: ElevatedButton.styleFrom(
                                 shape: CircleBorder(),
                                 padding: EdgeInsets.all(12.0),
                                 primary: AppColors.white,
                               ),
                               child: Icon(
                                 Icons.add,
                                 color: AppColors.hintTextColor,
                               ),
                             ),
                             Expanded(
                               child: SizedBox(),
                             ),
                             Text(
                               '${ 1200 * counter} Rs.',
                               style: TextStyle(fontSize: 12),
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
                   Expanded(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Column(
                                 children: [
                                   Text('T- Shirt', style: TextStyle(color: AppColors.black, fontSize: 16),),
                                   Text('Color: Grey    Size: L', style: TextStyle(color: AppColors.black, fontSize: 10),),
                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Column(
                                 children: [
                                   Icon(Icons.menu, color: AppColors.hintTextColor, size: 25,),
                                 ],
                               ),
                             ),
                           ],
                         ),
                         SizedBox(height: 3,),
                         Row(
                           children: [
                             ElevatedButton(
                               onPressed: decrementCounter,
                               style: ElevatedButton.styleFrom(
                                 shape: CircleBorder(),
                                 padding: EdgeInsets.all(12.0),
                                 primary: AppColors.white,
                               ),
                               child: Icon(
                                 Icons.minimize,
                                 color: AppColors.hintTextColor,
                               ),
                             ),
                             SizedBox(width: 4,),
                             Text(
                               '$counter',
                               style: TextStyle(fontSize: 10),
                             ),
                             SizedBox(width: 4,),
                             ElevatedButton(
                               onPressed: incrementCounter,
                               style: ElevatedButton.styleFrom(
                                 shape: CircleBorder(),
                                 padding: EdgeInsets.all(12.0),
                                 primary: AppColors.white,
                               ),
                               child: Icon(
                                 Icons.add,
                                 color: AppColors.hintTextColor,
                               ),
                             ),
                             Expanded(
                               child: SizedBox(), // Added Expanded to take up remaining space
                             ),
                             Text(
                               '${1500 * counter} Rs.',
                               style: TextStyle(fontSize: 12),
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
                   Image(image: AssetImage('assets/images/bag3.png'), fit: BoxFit.fill,),
                   Expanded(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Column(
                                 children: [
                                   Text('Sport Dress', style: TextStyle(color: AppColors.black, fontSize: 16),),
                                   Text('Color: Black    Size: M', style: TextStyle(color: AppColors.black, fontSize: 10),),
                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Column(
                                 children: [
                                   Icon(Icons.menu, color: AppColors.hintTextColor, size: 25,),
                                 ],
                               ),
                             ),
                           ],
                         ),
                         SizedBox(height: 3,),
                         Row(
                           children: [
                             ElevatedButton(
                               onPressed: decrementCounter,
                               style: ElevatedButton.styleFrom(
                                 shape: CircleBorder(),
                                 padding: EdgeInsets.all(12.0),
                                 primary: AppColors.white,
                               ),
                               child: Icon(
                                 Icons.minimize,
                                 color: AppColors.hintTextColor,
                               ),
                             ),
                             SizedBox(width: 4,),
                             Text(
                               '$counter',
                               style: TextStyle(fontSize: 10),
                             ),
                             SizedBox(width: 4,),
                             ElevatedButton(
                               onPressed: incrementCounter,
                               style: ElevatedButton.styleFrom(
                                 shape: CircleBorder(),
                                 padding: EdgeInsets.all(12.0),
                                 primary: AppColors.white,
                               ),
                               child: Icon(
                                 Icons.add,
                                 color: AppColors.hintTextColor,
                               ),
                             ),
                             Expanded(
                               child: SizedBox(), // Added Expanded to take up remaining space
                             ),
                             Text(
                               '${2000 * counter} Rs.',
                               style: TextStyle(fontSize: 12),
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
               height: 50,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('Enter your promo code',style: TextStyle(color: AppColors.hintTextColor),),
                   ElevatedButton(
                     onPressed: () {
                       showModalBottomSheet(
                         context: context,
                         builder: (BuildContext context) {
                           return SingleChildScrollView(
                             child: Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.only(
                                   topLeft: Radius.circular(20.0),
                                   topRight: Radius.circular(20.0),
                                 ),
                               ),
                               child: Padding(
                                 padding: const EdgeInsets.all(10.0),
                                 child: Column(
                                   children: [
                                     Container(
                                       width: double.infinity,
                                       height: 50,
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Text('Enter your promo code',style: TextStyle(color: AppColors.hintTextColor),),
                                           ElevatedButton(
                                             onPressed: (){},
                                             style: ElevatedButton.styleFrom(
                                               shape: CircleBorder(),
                                               padding: EdgeInsets.all(10.0),
                                               primary: AppColors.black,
                                             ),
                                             child: Icon(
                                               Icons.arrow_forward,
                                               color: AppColors.white,
                                             ),
                                           ),
                                         ],
                                       ),
                                     ),
                                     SizedBox(height: 10,),
                                     Row(
                                       children: [
                                         Text('Your Promo Codes',style: TextStyle(color: AppColors.black,fontSize: 18),),
                                       ],
                                     ),
                                     SizedBox(height: 10),
                                     Container(
                                       width: double.infinity,
                                       height: 80,
                                       decoration: BoxDecoration(
                                         color: AppColors.formColor,
                                         borderRadius: BorderRadius.circular(10.0),
                                       ),
                                       child: Row(
                                         children: [
                                           Flexible(
                                             child: Column(
                                             children: [
                                               Container(
                                                 width: 80,
                                                 height: 80,
                                                 color: AppColors.primaryColor,
                                                 child: Center(child: Text('10 %OFF',style: TextStyle(color: AppColors.white,fontWeight: FontWeight.bold),)),
                                               ),
                                             ],
                                             ),
                                           ),
                                           Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             crossAxisAlignment: CrossAxisAlignment.center,
                                             children: [
                                               SizedBox(width: 10,),
                                               Column(
                                                 children: [
                                                   Text('Personal offer',style: TextStyle(color: AppColors.black,fontSize: 12),),
                                                   SizedBox(height: 5,),
                                                   Text('mypromocode2020',style: TextStyle(color: AppColors.black,fontSize: 8),),
                                                 ],
                                               ),
                                               SizedBox(width: 80,),
                                               Column(
                                                 children: [
                                                   Text('6 days remaining',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                                                   SizedBox(height: 5,),
                                                   ElevatedButton(
                                                     onPressed: (){},
                                                     style: ElevatedButton.styleFrom(
                                                       primary: AppColors.primaryColor,
                                                       shape: RoundedRectangleBorder(
                                                         borderRadius: BorderRadius.circular(18.0),
                                                       ),
                                                       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                                     ),
                                                     child: Text(
                                                       'Apply',
                                                       style: TextStyle(
                                                         color: AppColors.white,
                                                       ),
                                                     ),
                                                   ),
                                                 ],
                                               ),
                                             ],
                                           ),
                                         ],
                                       ),
                                     ),
                                     SizedBox(height: 10,),
                                     Container(
                                       width: double.infinity,
                                       height: 80,
                                       decoration: BoxDecoration(
                                         color: AppColors.formColor,
                                         borderRadius: BorderRadius.circular(10.0),
                                       ),
                                       child: Row(
                                         children: [
                                           Flexible(
                                             child: Column(
                                               children: [
                                                 Container(
                                                   width: 80,
                                                   height: 80,
                                                   decoration: BoxDecoration(
                                                     image: DecorationImage(
                                                       image: AssetImage('assets/images/promo2.png'),
                                                       fit: BoxFit.cover,
                                                     ),
                                                   ),
                                                   child: Center(child: Text('15 %OFF',style: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold),)),
                                                 ),
                                               ],
                                             ),
                                           ),
                                           Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             crossAxisAlignment: CrossAxisAlignment.center,
                                             children: [
                                               SizedBox(width: 10,),
                                               Column(
                                                 children: [
                                                   Text('Summer Sale',style: TextStyle(color: AppColors.black,fontSize: 12),),
                                                   SizedBox(height: 5,),
                                                   Text('summer2020',style: TextStyle(color: AppColors.black,fontSize: 8),),
                                                 ],
                                               ),
                                               SizedBox(width: 80,),
                                               Column(
                                                 children: [
                                                   Text('23 days remaining',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                                                   SizedBox(height: 5,),
                                                   ElevatedButton(
                                                     onPressed: (){},
                                                     style: ElevatedButton.styleFrom(
                                                       primary: AppColors.primaryColor,
                                                       shape: RoundedRectangleBorder(
                                                         borderRadius: BorderRadius.circular(18.0),
                                                       ),
                                                       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                                     ),
                                                     child: Text(
                                                       'Apply',
                                                       style: TextStyle(
                                                         color: AppColors.white,
                                                       ),
                                                     ),
                                                   ),
                                                 ],
                                               ),
                                             ],
                                           ),
                                         ],
                                       ),
                                     ),
                                     SizedBox(height: 10,),
                                     Container(
                                       width: double.infinity,
                                       height: 80,
                                       decoration: BoxDecoration(
                                         color: AppColors.formColor,
                                         borderRadius: BorderRadius.circular(10.0),
                                       ),
                                       child: Row(
                                         children: [
                                           Flexible(
                                             child: Column(
                                               children: [
                                                 Container(
                                                   width: 80,
                                                   height: 80,
                                                   color: AppColors.black,
                                                   child: Center(child: Text('22 %OFF',style: TextStyle(color: AppColors.white,fontWeight: FontWeight.bold),)),
                                                 ),
                                               ],
                                             ),
                                           ),
                                           Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             crossAxisAlignment: CrossAxisAlignment.center,
                                             children: [
                                               SizedBox(width: 10,),
                                               Column(
                                                 children: [
                                                   Text('Personal offer',style: TextStyle(color: AppColors.black,fontSize: 12),),
                                                   SizedBox(height: 5,),
                                                   Text('mypromocode2020',style: TextStyle(color: AppColors.black,fontSize: 8),),
                                                 ],
                                               ),
                                               SizedBox(width: 80,),
                                               Column(
                                                 children: [
                                                   Text('6 days remaining',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                                                   SizedBox(height: 5,),
                                                   ElevatedButton(
                                                     onPressed: (){},
                                                     style: ElevatedButton.styleFrom(
                                                       primary: AppColors.primaryColor,
                                                       shape: RoundedRectangleBorder(
                                                         borderRadius: BorderRadius.circular(18.0),
                                                       ),
                                                       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                                     ),
                                                     child: Text(
                                                       'Apply',
                                                       style: TextStyle(
                                                         color: AppColors.white,
                                                       ),
                                                     ),
                                                   ),
                                                 ],
                                               ),
                                             ],
                                           ),
                                         ],
                                       ),
                                     ),
                                   ],
                                 )
                               ),
                             ),
                           );
                         },
                       );
                     },
                     style: ElevatedButton.styleFrom(
                       shape: CircleBorder(),
                       padding: EdgeInsets.all(10.0),
                       primary: AppColors.black,
                     ),
                     child: Icon(
                       Icons.arrow_forward,
                       color: AppColors.white,
                     ),
                   ),
                 ],
               ),
             ),
             SizedBox(height: 20,),
             Container(
               width: double.infinity,
               height: 30,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('Total amount',style: TextStyle(color: AppColors.hintTextColor),),
                   Text('${4700* counter} Rs.'),
                 ],
               ),
             ),
             SizedBox(height: 16),
             Center(
               child: ElevatedButton(
                 onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder:(context)=>CheckOut()));
                 },
                 style: ElevatedButton.styleFrom(
                   primary: AppColors.primaryColor,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(18.0),
                   ),
                   padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                 ),
                 child: Text(
                   'CHECK OUT',
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
