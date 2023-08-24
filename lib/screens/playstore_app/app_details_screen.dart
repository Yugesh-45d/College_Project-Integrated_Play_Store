import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:play_store_app/config/app_colors.dart';
import 'package:play_store_app/config/app_fonts.dart';
import 'package:play_store_app/config/helper_func.dart';
import 'package:play_store_app/screens/other_apps/business_card_generator/screens/splash_screen.dart';
import 'package:play_store_app/screens/other_apps/mero_music/splash_screen.dart';

class PlayStoreAppScreenDetail extends StatefulWidget {
  final Map<String, dynamic> appData;
  PlayStoreAppScreenDetail({
    Key? key,
    required this.appData,
  }) : super(key: key);

  @override
  State<PlayStoreAppScreenDetail> createState() =>
      _PlayStoreAppScreenDetailState();
}

class _PlayStoreAppScreenDetailState extends State<PlayStoreAppScreenDetail> {
  navfunc() {
    switch (widget.appData['name']) {
      case 'Business Card':
        Navigator.pushReplacement(
            context,
            (MaterialPageRoute(builder: (context) {
              return BusinessCardSplashScreen();
            })));

      case 'Mero Music':
        Navigator.pushReplacement(
            context,
            (MaterialPageRoute(builder: (context) {
              return MeroMusicSplashScreen();
            })));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: AppFunc.myPadding(top: 0, bottom: 0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: AppFunc.myPadding(top: 0, bottom: 0),
            child: Icon(Icons.more_vert_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: AppFunc.myPadding(top: 0),
        child: Column(
          children: [
            Row(
              children: [
                AppFunc.myLocalImage(
                  image: widget.appData['logo'],
                  height: 96,
                ),
                AppFunc.mySizedbox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppFunc.myText(
                      text: widget.appData['name'],
                      size: 32,
                      font: AppFonts.primaryFont,
                    ),
                    AppFunc.myText(
                      text: widget.appData['category'],
                      font: AppFonts.thirdFont,
                      color: AppColors.fourthColor,
                    ),
                  ],
                ),
              ],
            ),
            AppFunc.mySizedbox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        AppFunc.myText(
                          text: widget.appData['ratings'],
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          size: 16.h,
                        ),
                      ],
                    ),
                    AppFunc.myText(
                      text: "45K reviews",
                      size: 12,
                      color: AppColors.fourthColor,
                    ),
                  ],
                ),
                AppFunc.mySizedbox(width: 24),
                AppFunc.myText(
                  text: "|",
                  color: AppColors.fourthColor,
                  size: 20,
                ),
                AppFunc.mySizedbox(width: 24),
                Column(
                  children: [
                    Icon(Icons.download),
                    AppFunc.myText(
                      text: widget.appData['size'],
                      size: 12,
                      color: AppColors.fourthColor,
                    ),
                  ],
                ),
                AppFunc.mySizedbox(width: 24),
                AppFunc.myText(
                  text: "|",
                  color: AppColors.fourthColor,
                  size: 20,
                ),
                AppFunc.mySizedbox(width: 24),
                Column(
                  children: [
                    AppFunc.myText(
                      text: "10M+",
                      size: 16,
                    ),
                    AppFunc.myText(
                      text: "Downloads",
                      size: 12,
                      color: AppColors.fourthColor,
                    ),
                  ],
                ),
              ],
            ),
            AppFunc.mySizedbox(height: 32),
            AppFunc.myButton(
              text: "Install",
              func: () {
                navfunc();
              },
              borderRadius: 32,
              height: 48,
            ),
            AppFunc.mySizedbox(height: 32),
          ],
        ),
      ),
    );
  }
}
