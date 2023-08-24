import 'package:flutter/material.dart';
import 'package:play_store_app/screens/other_apps/instagram/screens/logins/signin_screen.dart';
import 'package:play_store_app/screens/other_apps/instagram/screens/mainpages/main_page.dart';

class InstaLoginScreen extends StatefulWidget {
  const InstaLoginScreen({super.key});

  @override
  State<InstaLoginScreen> createState() => _InstaLoginScreenState();
}

class _InstaLoginScreenState extends State<InstaLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFD9EBFF),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Icon(
                      Icons.settings,
                      size: 32,
                    ),
                  ],
                ),
              ),
              Image.asset(
                "assets/insta/insta2.png",
                height: 48,
              ),
              SizedBox(
                height: 24,
              ),
              Stack(alignment: Alignment.center, children: [
                CircleAvatar(
                  radius: 102,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  radius: 96,
                  backgroundImage: AssetImage("assets/insta/7.jpg"),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  "john_snow",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 8, bottom: 8),
                child: SizedBox(
                  height: 48,
                  width: double.maxFinite,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue.shade800,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => InstaMainPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 8, bottom: 8),
                child: SizedBox(
                  height: 48,
                  width: double.maxFinite,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => InstaSigninScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Log into another account",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 48,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 8, bottom: 8),
                child: Text(
                  "Create new account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Image.asset(
                "assets/insta/meta.png",
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
