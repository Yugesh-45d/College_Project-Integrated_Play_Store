import 'dart:async';

import 'package:flutter/material.dart';
import 'package:play_store_app/config/app_colors.dart';
import 'package:play_store_app/config/app_fonts.dart';
import 'package:play_store_app/config/helper_func.dart';
import 'package:play_store_app/screens/other_apps/business_card_generator/screens/register_screen.dart';

class BusinessCardSplashScreen extends StatelessWidget {
  const BusinessCardSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          (MaterialPageRoute(builder: (context) {
            return BusinessCardDataRegister();
          })));
    });
    return Scaffold(
      backgroundColor: AppColors.fifthColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppFunc.myLocalImage(image: "card.png", height: 120),
            AppFunc.myText(
              text: "Business Card Maker",
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
