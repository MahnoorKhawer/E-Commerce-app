import 'package:flutter/material.dart';
import 'package:ui_development/components/outlined_button.dart';
import 'package:ui_development/config/assets.dart';
import 'package:ui_development/config/colors.dart';
import 'package:ui_development/config/strings.dart';
import 'package:ui_development/config/styles.dart';
import 'package:ui_development/screens/authentication/login/login_screen.dart';

class SetNewPassword extends StatefulWidget {
  const SetNewPassword({Key? key}) : super(key: key);

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: IconButton(color: AppColors.black,
          onPressed: () {
          Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios),),
        title: Text('Forgot password', style: h2Bold18Black),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Text(AppStrings.setpassword, style: text1TextStyle16),
                SizedBox(height: 8),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                        .hasMatch(value)) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 70),
                PrimaryOutlinedButton(
                  primaryBtnColor: AppColors.primaryColor,
                  primaryTextStyle: text1TextStyle16,
                  btnText: 'SEND',
                  btnPress: () {
                    if (_formKey.currentState!.validate()) {
                      // Simulate sending an email
                      print('Email link sent to ${_emailController.text}');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
