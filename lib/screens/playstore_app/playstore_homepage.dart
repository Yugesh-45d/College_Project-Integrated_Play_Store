import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play_store_app/config/app_colors.dart';
import 'package:play_store_app/screens/playstore_app/body_pages/app_page.dart';
import 'package:play_store_app/screens/playstore_app/body_pages/profile_page.dart';

class PlayStoreHomePage extends StatefulWidget {
  const PlayStoreHomePage({super.key});

  @override
  State<PlayStoreHomePage> createState() => _PlayStoreHomePageState();
}

class _PlayStoreHomePageState extends State<PlayStoreHomePage> {
  int selectedIndex = 0;
  List<Widget> pages = [
    PlayStoreAppPage(),
    PlayStoreProfilePage(),
  ];

  Widget getbody() {
    return pages[selectedIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.backgroundColor,
        toolbarHeight: 0,
      ),
      body: getbody(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.backgroundColor,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        showUnselectedLabels: true,
        unselectedItemColor: AppColors.fourthColor,
        selectedItemColor: AppColors.thirdColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.game_controller),
            activeIcon: Icon(CupertinoIcons.game_controller_solid),
            label: 'Apps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            activeIcon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

//TODO
