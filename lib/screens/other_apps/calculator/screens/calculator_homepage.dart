import 'package:flutter/material.dart';
import 'package:play_store_app/config/app_colors.dart';
import 'package:play_store_app/config/app_fonts.dart';
import 'package:play_store_app/config/helper_func.dart';
import 'package:play_store_app/screens/other_apps/calculator/screens/simple_calculator.dart';
import 'package:play_store_app/screens/other_apps/calculator/screens/simple_interest.dart';

import '../../../playstore_app/playstore_homepage.dart';

class CalculatorHomePage extends StatelessWidget {
  const CalculatorHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => PlayStoreHomePage()));
          return true;
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text(
              "Calculator",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppFunc.myLocalImage(image: "calculator.png", height: 120),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppFunc.myText(
                      text: "Choose your calculator",
                      font: AppFonts.primaryFont,
                      size: 32,
                      weight: FontWeight.bold,
                      color: AppColors.thirdColor,
                    )),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 64,
                    width: double.maxFinite,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        elevation: 8,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SimpleCalculator()));
                      },
                      child: Text(
                        "Simple Calculator",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 64,
                    width: double.maxFinite,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        elevation: 8,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InterestCalculator(),
                          ),
                        );
                      },
                      child: Text(
                        "Interest Calculator",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
