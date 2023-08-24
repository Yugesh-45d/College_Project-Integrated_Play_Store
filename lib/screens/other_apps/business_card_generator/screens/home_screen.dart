import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:play_store_app/screens/other_apps/business_card_generator/provider/image_provider.dart';
import 'package:play_store_app/screens/playstore_app/playstore_homepage.dart';
import 'package:provider/provider.dart';

class BusinessCardGeneratorScreen extends StatelessWidget {
  const BusinessCardGeneratorScreen({super.key});

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
          backgroundColor: Colors.teal,
          body: Consumer<BusinessCardDataProvider>(
            builder: (context, value, child) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: MemoryImage(value.mydata[0].image!),
                  radius: 80.r,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  value.mydata[0].name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.sp,
                    fontFamily: "Pacifico",
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  value.mydata[0].profession,
                  style: TextStyle(
                    color: Colors.teal.shade100,
                    fontFamily: "SourceSans",
                    fontSize: 28.sp,
                    letterSpacing: 4,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                  width: 240.w,
                  child: Divider(
                    color: Colors.teal.shade200,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                    vertical: 8.h,
                    horizontal: 24.w,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal.shade400,
                    ),
                    title: Text(
                      value.mydata[0].phoneNumber,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.teal.shade400,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                    vertical: 8.h,
                    horizontal: 24.w,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal.shade400,
                    ),
                    title: Text(
                      value.mydata[0].email,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.teal.shade400,
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
