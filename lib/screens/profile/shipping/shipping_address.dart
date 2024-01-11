import 'package:flutter/material.dart';
import 'package:ui_development/config/colors.dart';
class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.arrow_back_ios,color: AppColors.black,)),
      ),
      body: Column(),
    );
  }
}
