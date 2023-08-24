import 'dart:async';

import 'package:flutter/material.dart';
import 'package:play_store_app/config/app_colors.dart';
import 'package:play_store_app/config/app_fonts.dart';
import 'package:play_store_app/config/helper_func.dart';
import 'package:play_store_app/screens/other_apps/mero_quiz/screens/quiz_screen.dart';

class MeroQuizSplashScreen extends StatelessWidget {
  const MeroQuizSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          (MaterialPageRoute(builder: (context) {
            return MeroQuizHomePage();
          })));
    });
    return Scaffold(
      backgroundColor: AppColors.fifthColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppFunc.myLocalImage(image: "quiz.png", height: 120),
            AppFunc.myText(
              text: "Mero Quiz",
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