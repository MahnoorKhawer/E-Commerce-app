import 'package:flutter/material.dart';
import 'package:ui_development/config/colors.dart';
import 'package:ui_development/config/styles.dart';
import 'package:ui_development/screens/profile/profile_screen.dart';
class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  TextEditingController _name =TextEditingController();
  TextEditingController _number =TextEditingController();
  TextEditingController _expiredate =TextEditingController();
  TextEditingController _cvv =TextEditingController();

  bool isChecked=false;
  bool isCkeck=false;
  bool isch=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>MyProfile()));
          },
          icon: Icon(Icons.arrow_back_ios,color: AppColors.black,),
        ),
        title: Text('Payment methods',style: TextStyle(color: AppColors.black,fontSize: 18),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Your payment cards',style: TextStyle(color: AppColors.black,fontSize: 18),),
              SizedBox(height: 15,),
              Container(
                width: double.infinity,
                height: 300.0,
                decoration: BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image(image: AssetImage('assets/images/chipp.png'),
                          width: 70,
                          height: 50,),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('**** **** **** 3947',style: TextStyle(color: AppColors.white,fontSize: 20),),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('Card Holder Name',style: TextStyle(color: AppColors.white,fontSize: 10),),
                              SizedBox(height: 5,),
                              Text('Jennyfer Doe',style: TextStyle(color: AppColors.white,fontSize: 13),),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Expiry Date',style: TextStyle(color: AppColors.white,fontSize: 10),),
                              SizedBox(height: 5,),
                              Text('05/23',style: TextStyle(color: AppColors.white,fontSize: 13),),
                            ],
                          ),
                          Column(
                            children: [
                              Image(image: AssetImage('assets/images/mastercardd.png'),
                              width: 50,
                              height: 30,),
                             SizedBox(height: 5,),
                              Text('mastercard',style: TextStyle(color: AppColors.white,fontSize: 8),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
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
                  Text('Use as default payment method'),
                ],
              ),
              SizedBox(height: 15,),
              Container(
                width: double.infinity,
                height: 300.0,
                decoration: BoxDecoration(
                  color: AppColors.hintTextColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image(image: AssetImage('assets/images/visa.png'),
                           // width: 70,
                          //  height: 50,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('**** **** **** 4546',style: TextStyle(color: AppColors.white,fontSize: 20),),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(image: AssetImage('assets/images/chipp.png'),
                             width: 70,
                              height: 50,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('Card Holder Name',style: TextStyle(color: AppColors.white,fontSize: 10),),
                              SizedBox(height: 5,),
                              Text('Jennyfer Doe',style: TextStyle(color: AppColors.white,fontSize: 13),),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Expiry Date',style: TextStyle(color: AppColors.white,fontSize: 10),),
                              SizedBox(height: 5,),
                              Text('05/23',style: TextStyle(color: AppColors.white,fontSize: 13),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Checkbox(
                    value: isCkeck,
                    onChanged: (newValue) {
                      setState(() {
                        isCkeck = newValue!;
                      });
                    },
                    activeColor: Colors.black,
                    checkColor: Colors.white,
                  ),

                  SizedBox(width: 5,),
                  Text('Use as default payment method'),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.black,
        foregroundColor: AppColors.white,
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
                        Text('Add new card', style: text1TextStyle16,),
                        SizedBox(height: 5,),
                        TextField(
                          controller: _name,
                          decoration: InputDecoration(
                            labelText: 'Name on card',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        TextField(
                          controller: _number,
                          decoration: InputDecoration(
                            labelText: 'Card number',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        TextField(
                          controller: _expiredate,
                          decoration: InputDecoration(
                            labelText: 'Expire Date\n05/23',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        TextField(
                          controller: _cvv,
                          decoration: InputDecoration(
                            labelText: 'Cvv',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Checkbox(
                              value: isch,
                              onChanged: (newValue) {
                                 setState(() {
                                   isch = newValue!;
                                 });
                              },
                              activeColor: Colors.black,
                              checkColor: Colors.white,
                            ),

                            SizedBox(width: 5,),
                            Text('Use as default payment method'),
                          ],
                        ),
                        SizedBox(height: 5,),
                        ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Add New Card'),
                                  content: Text('The card has been added.'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder:(context)=>PaymentMethod()));
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
                          child: Text('ADD CARD', style: TextStyle(color: AppColors.white)),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: Text('+', style: TextStyle(fontSize: 20)),
        shape: CircleBorder(),
      ),
    );
  }
}
