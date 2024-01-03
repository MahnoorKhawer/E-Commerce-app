import 'package:flutter/material.dart';
import 'package:ui_development/components/appbar.dart';
import 'package:ui_development/components/outlined_button.dart';
import 'package:ui_development/components/social_buttons.dart';
import 'package:ui_development/config/assets.dart';
import 'package:ui_development/config/colors.dart';
import 'package:ui_development/config/constants.dart';
import 'package:ui_development/config/strings.dart';
import 'package:ui_development/config/styles.dart';
import 'package:ui_development/screens/authentication/forgotPassword/forg_pass_screen.dart';
import 'package:ui_development/screens/splash_Screen.dart';
import 'package:flutter_svg/flutter_svg.dart';



class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TextFormField(
              style: text1TextStyle16,
              cursorColor: AppColors.successGreenColor,
              //autofocus: true,
              keyboardType: TextInputType.emailAddress,
              onSaved: (newValue) => email = newValue,
              onChanged: (value) {
                setState(() {
                  if (value.isNotEmpty &&
                      emailValidatorRegExp.hasMatch(value)) {
                    //isButtonEnabled = true;
                  } else {
                    //isButtonEnabled = false;
                  }
                });
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return kEmailNullError;
                } else if (!emailValidatorRegExp.hasMatch(value)) {
                  return kInvalidEmailError;
                }
                return null;
              },
              decoration: buildInputDecoration(AppStrings.email),
            ),
            SizedBox(height: 10,),
            TextFormField(
              style: text1TextStyle16,
              cursorColor: AppColors.successGreenColor,
              //autofocus: true,
              keyboardType: TextInputType.text,
              onSaved: (newValue) => password = newValue,
              onChanged: (value) {
                setState(() {
                  if (value.isNotEmpty && value.length > 6) {
                    // isButtonEnabled = true;
                  } else {
                    //isButtonEnabled = false;
                  }
                });
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return kPassNullError;
                } else if (value.length < 6) {
                  return kShortPassError;
                }
                return null;
              },
              decoration: buildInputDecoration(AppStrings.password),
            ),
            SizedBox(height: 30,),
            Center(
              child: PrimaryOutlinedButton(
                primaryBtnColor: AppColors.warningColor,
                primaryTextStyle: text1TextStyle16,
                btnText: 'Login',
                btnPress: (){},
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => SplashScreen())),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: Row(
                children: [
                  SocialButton(
                      press: () {},
                      gradiendColor1: AppColors.white,
                      gradientColor2: AppColors.white,
                      color: AppColors.dashboardGreyColor,
                      widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageAssets.facebook,
                            width: 24,
                            height: 24,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Facebook',
                            style: h4Bold13Black.copyWith(color: AppColors
                                .white),
                          )
                        ],
                      )),
                  SizedBox(width: 10,),
                  SocialButton(
                      press: () {},
                      gradiendColor1: AppColors.white,
                      gradientColor2: AppColors.white,
                      color: AppColors.dashboardGreyColor,
                      widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageAssets.google,
                            width: 24,
                            height: 24,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(height: 5,),
                          const Text(
                            'Google',
                            style: h4Bold13Black,
                          ),
                        ],
                      )),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}


//Email
//   Widget buildEmailFormField() {
//     return TextFormField(
//       style: text1TextStyle16,
//       cursorColor: AppColors.successGreenColor,
//       //autofocus: true,
//       keyboardType: TextInputType.emailAddress,
//       onSaved: (newValue) => email = newValue,
//       onChanged: (value) {
//         setState(() {
//           if (value.isNotEmpty && emailValidatorRegExp.hasMatch(value)) {
//             //isButtonEnabled = true;
//           } else {
//             //isButtonEnabled = false;
//           }
//         });
//       },
//       validator: (value) {
//         if (value!.isEmpty) {
//           return kEmailNullError;
//         } else if (!emailValidatorRegExp.hasMatch(value)) {
//           return kInvalidEmailError;
//         }
//         return null;
//       },
//       decoration: buildInputDecoration(AppStrings.email),
//     );
//   }

//Password
//   Widget buildPasswordFormField() {
//     return TextFormField(
//       style: text1TextStyle16,
//       cursorColor: AppColors.successGreenColor,
//       //autofocus: true,
//       keyboardType: TextInputType.text,
//       onSaved: (newValue) => password = newValue,
//       onChanged: (value) {
//         setState(() {
//           if (value.isNotEmpty && value.length > 6) {
//             // isButtonEnabled = true;
//           } else {
//             //isButtonEnabled = false;
//           }
//         });
//       },
//       validator: (value) {
//         if (value!.isEmpty) {
//           return kPassNullError;
//         } else if (value.length < 6) {
//           return kShortPassError;
//         }
//         return null;
//       },
//       decoration: buildInputDecoration(AppStrings.password),
//     );
//   }

//Socail Buttons
//   Widget socailButtons() {
//     return Row(
//       children: [
//         Expanded(
//           child: SocialButton(
//             widget: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   ImageAssets.google,
//                   width: 24,
//                   height: 24,
//                   fit: BoxFit.contain,
//                 ),
//                 const SizedBox(width: 8),
//                 const Text(
//                   'Google',
//                   style: h4Bold13Black,
//                 )
//               ],
//             ),
//             press: () {},
//             gradiendColor1: AppColors.white,
//             gradientColor2: AppColors.white,
//             color: AppColors.dashboardGreyColor,
//           ),
//         ),
//         const SizedBox(width: 8),
//         Expanded(
//           child: SocialButton(
//             widget: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   ImageAssets.facebook,
//                   width: 24,
//                   height: 24,
//                   fit: BoxFit.contain,
//                 ),
//                 const SizedBox(width: 8),
//                 Text(
//                   'Facebook',
//                   style: h4Bold13Black.copyWith(color: AppColors.white),
//                 )
//               ],
//             ),
//             press: () {},
//             gradiendColor1: const Color(0xffFF9800),
//             gradientColor2: const Color(0xffFF9800),
//             color: const Color(0xffFF9800),
//           ),
//         ),
//       ],
//     );
//   }
// }
