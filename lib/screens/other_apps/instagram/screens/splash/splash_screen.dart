import 'package:flutter/material.dart';

import 'package:play_store_app/screens/other_apps/instagram/screens/logins/login_screen.dart';

class InstaSplashScreen extends StatefulWidget {
  const InstaSplashScreen({super.key});

  @override
  State<InstaSplashScreen> createState() => _InstaSplashScreenState();
}

class _InstaSplashScreenState extends State<InstaSplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => InstaLoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Image.asset(
              "assets/insta/insta2.png",
              height: 96,
            ),
          ),
          SizedBox(
            height: 240,
          ),
          Text(
            "from",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          Image.asset(
            "assets/insta/meta.png",
            height: 40,
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
