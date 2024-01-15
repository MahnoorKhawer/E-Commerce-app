import 'package:flutter/material.dart';
import 'package:ui_development/config/colors.dart';
import 'package:ui_development/config/styles.dart';
import 'package:ui_development/screens/authentication/forgotPassword/forgot_password.dart';
import 'package:ui_development/screens/profile/profile_screen.dart';

class MySetting extends StatefulWidget {
  const MySetting({super.key});

  @override
  State<MySetting> createState() => _MySettingState();
}

class _MySettingState extends State<MySetting> {
  bool isSearching = false;
  bool isCkecked=false;
  bool isChecktwo=false;
  bool isCheckthree=false;
  TextEditingController searchController = TextEditingController();
  TextEditingController _name =TextEditingController();
  TextEditingController _birth =TextEditingController();
  TextEditingController _password =TextEditingController();
  TextEditingController _oldpassword=TextEditingController();
  TextEditingController _Newpassword=TextEditingController();
  TextEditingController _repeatpassword=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context)=>MyProfile()));
          },
          icon: Icon(Icons.arrow_back_ios, color: AppColors.black),
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
            IconButton(
              onPressed: () {
                setState(() {
                  isSearching = true;
                });
              },
              icon: Icon(Icons.search, color: AppColors.black),
            ),
          ],
        ),
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
              Text('Settings',style: h1Bold24Black,),
              SizedBox(height: 10,),
              Text('Personal Information',style: text1TextStyle16,),
              SizedBox(height: 10,),
              TextField(
                controller: _name,
                decoration: InputDecoration(
                  labelText: 'Full name',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
             SizedBox(height: 10,),
              TextField(
                controller: _birth,
                decoration: InputDecoration(
                  labelText: 'Date of Birth\n26/06/2023',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Password', style: text1TextStyle16,),
                  TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
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
                                  Text('Password Change', style: text1TextStyle16,),
                                  SizedBox(height: 5,),
                                  TextField(
                                    controller: _oldpassword,
                                    decoration: InputDecoration(
                                      labelText: 'Old Password',
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => SetNewPassword()));
                                        },
                                        child: Text('Forgot Password?', style: TextStyle(color: AppColors.hintTextColor)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  TextField(
                                    controller: _Newpassword,
                                    keyboardType: TextInputType.visiblePassword,
                                    decoration: InputDecoration(
                                      labelText: 'New Password',
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  TextField(
                                    controller: _repeatpassword,
                                    keyboardType: TextInputType.visiblePassword,
                                    decoration: InputDecoration(
                                      labelText: 'Repeat new Password',
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  ElevatedButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text('Saved Password'),
                                            content: Text('The Password has been saved.'),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.push(context, MaterialPageRoute(builder:(context)=>MySetting()));
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
                                    ),
                                    child: Text('SAVE PASSWORD', style: TextStyle(color: AppColors.white)),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Text('Change', style: TextStyle(color: AppColors.hintTextColor)),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              TextField(
                controller: _password,
                decoration: InputDecoration(
                  labelText: 'Password\n*********',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Notifications',style: text1TextStyle16,),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sales',style: TextStyle(color: AppColors.black,fontSize: 15),),
                  Switch(
                      value: isCkecked,
                      onChanged: (bool newValue){
                       setState(() {
                         isCkecked=newValue!;
                       });
                      },
                    activeColor: Colors.green,
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('New arrivals',style: TextStyle(color: AppColors.black,fontSize: 15),),
                  Switch(
                      value: isChecktwo,
                      onChanged: (bool newValue){
                      setState(() {
                        isChecktwo=newValue!;
                      });
                      },
                    activeColor: Colors.green,
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery status changes',style: TextStyle(color: AppColors.black,fontSize: 15),),
                  Switch(
                      value: isCheckthree,
                      onChanged: (bool newValue){
                       setState(() {
                         isCheckthree=newValue!;
                       });
                      },
                    activeColor: Colors.green,
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
