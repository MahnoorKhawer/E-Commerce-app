import 'package:flutter/material.dart';
import 'package:ui_development/config/colors.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  int selectedButtonIndex = 0;
  bool isSearching = false;
  TextEditingController searchController = TextEditingController();

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
          onChanged: (value) {},
        )
            : Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'My Orders',
              style: TextStyle(color: AppColors.black, fontSize: 20,fontWeight: FontWeight.bold),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildTabButton(0, 'Delivered'),
                      buildTabButton(1, 'Processing'),
                      buildTabButton(2, 'Cancelled'),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
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
                            Text('Order N^1947034',style: TextStyle(color: AppColors.hintTextColor),),
                            Text('05-12-2019',style: TextStyle(color: AppColors.hintTextColor),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Tracking number: ',style: TextStyle(color: AppColors.hintTextColor),),
                            Text('1W3475453455',style: TextStyle(color: AppColors.black),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Quantity: 3',style: TextStyle(color: AppColors.hintTextColor),),
                            Text('Total Amount: 112&',style: TextStyle(color: AppColors.hintTextColor),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(onPressed: (){}, child: Text('Details',style: TextStyle(color: AppColors.black),)),
                            Text('Delivered',style: TextStyle(color: AppColors.successGreenColor),),
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
                            Text('Order N^1947034',style: TextStyle(color: AppColors.hintTextColor),),
                            Text('05-12-2019',style: TextStyle(color: AppColors.hintTextColor),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Tracking number: ',style: TextStyle(color: AppColors.hintTextColor),),
                            Text('1W3475453455',style: TextStyle(color: AppColors.black),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Quantity: 3',style: TextStyle(color: AppColors.hintTextColor),),
                            Text('Total Amount: 112&',style: TextStyle(color: AppColors.hintTextColor),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(onPressed: (){}, child: Text('Details',style: TextStyle(color: AppColors.black),)),
                            Text('Delivered',style: TextStyle(color: AppColors.successGreenColor),),
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
                            Text('Order N^1947034',style: TextStyle(color: AppColors.hintTextColor),),
                            Text('05-12-2019',style: TextStyle(color: AppColors.hintTextColor),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Tracking number: ',style: TextStyle(color: AppColors.hintTextColor),),
                            Text('1W3475453455',style: TextStyle(color: AppColors.black),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Quantity: 3',style: TextStyle(color: AppColors.hintTextColor),),
                            Text('Total Amount: 112&',style: TextStyle(color: AppColors.hintTextColor),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(onPressed: (){}, child: Text('Details',style: TextStyle(color: AppColors.black),)),
                            Text('Delivered',style: TextStyle(color: AppColors.successGreenColor),),
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
                            Text('Order N^1947034',style: TextStyle(color: AppColors.hintTextColor),),
                            Text('05-12-2019',style: TextStyle(color: AppColors.hintTextColor),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Tracking number: ',style: TextStyle(color: AppColors.hintTextColor),),
                            Text('1W3475453455',style: TextStyle(color: AppColors.black),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Quantity: 3',style: TextStyle(color: AppColors.hintTextColor),),
                            Text('Total Amount: 112&',style: TextStyle(color: AppColors.hintTextColor),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(onPressed: (){}, child: Text('Details',style: TextStyle(color: AppColors.black),)),
                            Text('Delivered',style: TextStyle(color: AppColors.successGreenColor),),
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
                            Text('Order N^1947034',style: TextStyle(color: AppColors.hintTextColor),),
                            Text('05-12-2019',style: TextStyle(color: AppColors.hintTextColor),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Tracking number: ',style: TextStyle(color: AppColors.hintTextColor),),
                            Text('1W3475453455',style: TextStyle(color: AppColors.black),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Quantity: 3',style: TextStyle(color: AppColors.hintTextColor),),
                            Text('Total Amount: 112&',style: TextStyle(color: AppColors.hintTextColor),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(onPressed: (){}, child: Text('Details',style: TextStyle(color: AppColors.black),)),
                            Text('Delivered',style: TextStyle(color: AppColors.successGreenColor),),
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
    );
  }
  Widget buildTabButton(int index, String text) {
    bool isSelected = selectedButtonIndex == index;
    return TextButton(
      onPressed: () {
        setState(() {
          selectedButtonIndex = index;
        });
      },
      style: ButtonStyle(
        backgroundColor: isSelected
            ? MaterialStateProperty.all(AppColors.black)
            : MaterialStateProperty.all(Colors.transparent),
        foregroundColor: isSelected
            ? MaterialStateProperty.all(Colors.white)
            : MaterialStateProperty.all(AppColors.black),
      ),
      child: Text(text),
    );
  }
}