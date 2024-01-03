import 'package:flutter/material.dart';
import 'package:ui_development/components/appbar.dart';
import 'package:ui_development/screens/authentication/forgotPassword/forg_pass_form.dart';

class ForgotPassowrdScreen extends StatelessWidget {
  static String routeName = '/forgotPasswordScreen';
  const ForgotPassowrdScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: CustomAppBar(
      //   title: AppStrings.password,
      // ),
      body: ForgotPasswordForm(),
    );
  }
}