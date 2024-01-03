import 'package:flutter/material.dart';
import 'package:ui_development/screens/authentication/login/login_form.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/signInScreen';
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignInForm(),
    );
  }
}
