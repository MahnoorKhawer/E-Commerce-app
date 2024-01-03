
import 'package:flutter/material.dart';
import 'package:ui_development/components/appbar.dart';
import 'package:ui_development/config/colors.dart';
import 'package:ui_development/config/strings.dart';

class Profile extends StatefulWidget {
  static String routeName = '/profile';
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColors.primaryColor,
      // appBar: CustomAppBar(
      //   assetPath: SvgAssets.backArrow,
      //   title: AppStrings.appTitle,
      //   onLeadingTap: () {},
      // ),
      body: Container(),
    );
  }
}
