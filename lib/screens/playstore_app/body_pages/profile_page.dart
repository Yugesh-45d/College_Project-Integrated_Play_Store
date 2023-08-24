import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:play_store_app/config/app_fonts.dart';
import 'package:play_store_app/config/helper_func.dart';

class PlayStoreProfilePage extends StatefulWidget {
  const PlayStoreProfilePage({super.key});

  @override
  State<PlayStoreProfilePage> createState() => _PlayStoreProfilePageState();
}

class _PlayStoreProfilePageState extends State<PlayStoreProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppFunc.myPadding(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: Colors.deepPurple,
            ),
            width: double.maxFinite.w,
            height: 120.h,
            child: Padding(
              padding: AppFunc.myPadding(),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 32.r,
                    child: AppFunc.myLocalImage(image: '2.png'),
                  ),
                  title: AppFunc.myText(
                    text: "Emily Jones",
                    size: 24,
                    font: AppFonts.thirdFont,
                    color: Colors.white,
                  ),
                  subtitle: AppFunc.myText(
                    text: "Kathmandu Nepal",
                    font: AppFonts.thirdFont,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          AppFunc.mySizedbox(height: 16),
          AppFunc.myListCupertinoListTile(text: "Account Setting"),
          AppFunc.myListCupertinoListTile(text: "Download Options"),
          AppFunc.myListCupertinoListTile(text: "Notifications Setting"),
          AppFunc.mySizedbox(height: 16),
          AppFunc.myListCupertinoListTile(text: "Privacy Policy"),
          AppFunc.myListCupertinoListTile(text: "Help Center"),
          AppFunc.myListCupertinoListTile(text: "About Us"),
          CupertinoListTile(
            title: AppFunc.myText(
              text: "Delete Account",
              font: AppFonts.thirdFont,
              size: 20,
              color: Colors.red,
            ),
          ),
          AppFunc.mySizedbox(height: 24),
          AppFunc.myButton(
            width: 280,
            borderRadius: 32,
            text: "Log Out",
            func: () async {
              Fluttertoast.showToast(
                  msg: "Logged out", backgroundColor: Colors.redAccent);
              // Navigator.pushReplacement(context,
              //     MaterialPageRoute(builder: ((context) => LoginScreen())));
            },
          ),
        ],
      ),
    );
  }
}
