import 'dart:async';

import 'package:flutter/material.dart';
import 'package:play_store_app/config/app_colors.dart';
import 'package:play_store_app/config/app_fonts.dart';
import 'package:play_store_app/config/helper_func.dart';
import 'package:play_store_app/screens/other_apps/notes/screens/home_page.dart';

class NotesAppSplashScreen extends StatelessWidget {
  const NotesAppSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          (MaterialPageRoute(builder: (context) {
            return NotesAppHomePage();
          })));
    });
    return Scaffold(
      backgroundColor: AppColors.fifthColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppFunc.myLocalImage(image: "notes.png", height: 120),
            AppFunc.myText(
              text: "Notes",
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