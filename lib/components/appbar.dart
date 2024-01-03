import 'package:flutter/material.dart';
import 'package:ui_development/config/styles.dart';

import '../config/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {

  final VoidCallback? onLeadingTap;
  final String? title;
  final String? assetPath;

  const CustomAppBar({
    Key? key,
    //required this.title,
    this.onLeadingTap,
    this.title,
    this.assetPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      //centerTitle: true,
      leading: Material(
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(16.0),
          ),
          onTap: onLeadingTap ?? () => Navigator.of(context).pop(),
          child: SvgPicture.asset(
            assetPath!,
            fit: BoxFit.scaleDown,
            color: AppColors.black,
          ),
        ),
      ),
      title: Text(
        title!,
        style: h1Bold24Black.copyWith(fontWeight: FontWeight.normal),
      ),
      automaticallyImplyLeading: false,
    );
  }
}