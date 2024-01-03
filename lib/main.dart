import 'package:flutter/material.dart';
import 'package:ui_development/screens/splash_Screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
