import 'package:flutter/material.dart';
import 'package:ui_development/config/colors.dart';
import 'package:ui_development/screens/profile/shipping/shipping_address.dart';
class AddingAddress extends StatefulWidget {
  const AddingAddress({super.key});

  @override
  State<AddingAddress> createState() => _AddingAddressState();
}

class _AddingAddressState extends State<AddingAddress> {
  TextEditingController _name =TextEditingController();
  TextEditingController _address =TextEditingController();
  TextEditingController _city =TextEditingController();
  TextEditingController _region =TextEditingController();
  TextEditingController _zipcode =TextEditingController();
  TextEditingController _country =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,color: AppColors.black,),),
        title: Text('Adding Shipping Address',style: TextStyle(color: AppColors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: _name,
                decoration: InputDecoration(
                  labelText: 'Full name',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _address,
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _city,
                decoration: InputDecoration(
                  labelText: 'City',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _region,
                decoration: InputDecoration(
                  labelText: 'State/Province/Region',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _zipcode,
                decoration: InputDecoration(
                  labelText: 'Zip Code(Postal Code)',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _country,
                decoration: InputDecoration(
                  labelText: 'Country',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Data Saved'),
                        content: Text('The address data has been saved.'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder:(context)=>ShippingAddress()));
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
                child: Text('SAVE ADDRESS', style: TextStyle(color: AppColors.white)),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
