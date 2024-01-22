import 'package:flutter/material.dart';
import 'package:ui_development/config/colors.dart';
import 'package:ui_development/screens/profile/order/my-orders.dart';
class OrderDetail extends StatefulWidget {
  const OrderDetail({super.key});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  bool isSearching = false;
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>MyOrder()));
            },
            icon: Icon(Icons.arrow_back_ios,color: AppColors.black,)),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Details',style: TextStyle(color: AppColors.black,fontSize: 16),),
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order N^1947034',style: TextStyle(color: AppColors.black,fontSize: 14),),
                  Text('05-12-2019',style: TextStyle(color: AppColors.hintTextColor,fontSize: 12),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Tracking number:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 12),),
                  SizedBox(width: 5,),
                  Text('IW3475453455',style: TextStyle(color: AppColors.black,fontSize: 12),),
                  SizedBox(width: 70,),
                  Text('Delivered',style: TextStyle(color: AppColors.successGreenColor,fontSize: 14),),
                ],
              ),
              SizedBox(height: 10,),
              Text('3 items',style: TextStyle(color: AppColors.black,fontSize: 14),),
              SizedBox(height: 16,),
              Container(
                width: double.infinity,
                height: 100,
                color: AppColors.formColor,
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/orderdetail.png'), fit: BoxFit.fill,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Pullover',style: TextStyle(color: AppColors.black,fontSize: 12),),
                          SizedBox(height: 5,),
                          Text('Mango',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text('Color:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                              SizedBox(width: 3,),
                              Text('Grey',style: TextStyle(color: AppColors.black,fontSize: 10),),
                              SizedBox(width: 16,),
                              Text('Size: L',style: TextStyle(color: AppColors.black,fontSize: 10),),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text('Unit: 1',style: TextStyle(color: AppColors.hintTextColor,fontSize: 14),),
                              SizedBox(width: 120,),
                              Text('51&',style: TextStyle(color: AppColors.black,fontSize: 14),),
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
                height: 100,
                color: AppColors.formColor,
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/bag3.png'), fit: BoxFit.fill,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Pullover',style: TextStyle(color: AppColors.black,fontSize: 12),),
                          SizedBox(height: 5,),
                          Text('Mango',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text('Color:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                              SizedBox(width: 3,),
                              Text('Grey',style: TextStyle(color: AppColors.black,fontSize: 10),),
                              SizedBox(width: 16,),
                              Text('Size: L',style: TextStyle(color: AppColors.black,fontSize: 10),),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text('Unit: 1',style: TextStyle(color: AppColors.hintTextColor,fontSize: 14),),
                              SizedBox(width: 120,),
                              Text('51&',style: TextStyle(color: AppColors.black,fontSize: 14),),
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
                height: 100,
                color: AppColors.formColor,
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/bag.png'), fit: BoxFit.fill,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Pullover',style: TextStyle(color: AppColors.black,fontSize: 12),),
                          SizedBox(height: 5,),
                          Text('Mango',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text('Color:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                              SizedBox(width: 3,),
                              Text('Grey',style: TextStyle(color: AppColors.black,fontSize: 10),),
                              SizedBox(width: 16,),
                              Text('Size: L',style: TextStyle(color: AppColors.black,fontSize: 10),),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text('Unit: 1',style: TextStyle(color: AppColors.hintTextColor,fontSize: 14),),
                              SizedBox(width: 120,),
                              Text('51&',style: TextStyle(color: AppColors.black,fontSize: 14),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text('Order Information',style: TextStyle(color: AppColors.black,fontSize: 14),),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Shipping Address:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 12),),
                  Text('3 Nwebridge Court, Chino Hills,\nCA 91709, United States',style: TextStyle(color: AppColors.black,fontSize: 12),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Payment method',style: TextStyle(color: AppColors.hintTextColor,fontSize: 12),),
                  Row(
                    children: [
                      Image(image: AssetImage('assets/images/mastercardd.png'),height: 24,width: 24,),
                      SizedBox(width: 5,),
                      Text(' **** **** **** 3947',style: TextStyle(color: AppColors.black,fontSize: 12),),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery method:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 12),),
                  Text('FedEx, 3 days, 15&',style: TextStyle(color: AppColors.black,fontSize: 12),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Discount:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 12),),
                  Text('10%, Personal promo code',style: TextStyle(color: AppColors.black,fontSize: 12),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Amount:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 12),),
                  Text('133&',style: TextStyle(color: AppColors.black,fontSize: 12),),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.white,
                      onPrimary: AppColors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                    ),
                    child: Text(
                      'Reorder',
                      style: TextStyle(
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 8),
                    ),
                    child: Text(
                      'Leave feedback',
                      style: TextStyle(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
