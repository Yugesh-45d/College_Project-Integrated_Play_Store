import 'dart:async';

import 'package:flutter/material.dart';
import 'package:play_store_app/config/app_colors.dart';
import 'package:play_store_app/screens/other_apps/calculator/screens/calculator_homepage.dart';
import '../../../../config/app_fonts.dart';
import '../../../../config/helper_func.dart';

class CalculatorSplashScreen extends StatelessWidget {
  const CalculatorSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          (MaterialPageRoute(builder: (context) {
            return CalculatorHomePage();
          })));
    });
    return Scaffold(
      backgroundColor: AppColors.fifthColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppFunc.myLocalImage(image: "calculator.png", height: 120),
            AppFunc.myText(
              text: "Calculator App",
              size: 32,
              font: AppFonts.primaryFont,
              weight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
