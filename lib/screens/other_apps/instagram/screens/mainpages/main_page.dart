import 'package:flutter/material.dart';
import 'package:play_store_app/screens/other_apps/instagram/screens/mainpages/new_post.dart';
import 'package:play_store_app/screens/other_apps/instagram/screens/mainpages/profile_page.dart';
import 'package:play_store_app/screens/other_apps/instagram/screens/mainpages/reels_page.dart';
import 'package:play_store_app/screens/other_apps/instagram/screens/mainpages/search_page.dart';
import 'package:play_store_app/screens/playstore_app/playstore_homepage.dart';

import 'home_page.dart';

class InstaMainPage extends StatefulWidget {
  InstaMainPage({super.key});

  @override
  State<InstaMainPage> createState() => _InstaMainPageState();
}

class _InstaMainPageState extends State<InstaMainPage> {
  bool home = true;
  bool search = false;
  bool add = false;
  bool reels = false;
  bool avatar = false;
  int selected_index = 0;

  List<Widget> pages = [
    Insta_HomePage(),
    InstaSearchPage(),
    InstaNewPostPage(),
    InstaReelsPage(),
    InstaProfilePage(),
  ];
  getBody() {
    return pages[selected_index];
  }

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
          body: getBody(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selected_index,
            onTap: (newIndex) {
              setState(() {
                selected_index = newIndex;
                switch (selected_index) {
                  case 0:
                    {
                      home = true;
                      search = false;
                      add = false;
                      reels = false;
                      avatar = false;
                    }
                  case 1:
                    {
                      home = false;
                      search = true;
                      add = false;
                      reels = false;
                      avatar = false;
                    }
                  case 2:
                    {
                      home = false;
                      search = false;
                      add = true;
                      reels = false;
                      avatar = false;
                    }
                  case 3:
                    {
                      home = false;
                      search = false;
                      add = false;
                      reels = true;
                      avatar = false;
                    }
                  case 4:
                    {
                      home = false;
                      search = false;
                      add = false;
                      reels = false;
                      avatar = true;
                    }
                }
              });
            },
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: home
                    ? Image.asset("assets/insta/home_filled.png", height: 28)
                    : Image.asset("assets/insta/home.png", height: 28),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: search
                    ? Icon(Icons.search, size: 32, color: Colors.black)
                    : Image.asset("assets/insta/search.png", height: 28),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: add
                    ? Image.asset("assets/insta/add_filled.png", height: 28)
                    : Image.asset("assets/insta/add.png", height: 28),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: reels
                    ? Image.asset("assets/insta/reels_filled.png", height: 28)
                    : Image.asset("assets/insta/reels.png", height: 28),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: avatar
                    ? Stack(alignment: Alignment.center, children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.black,
                        ),
                        CircleAvatar(
                          radius: 14,
                          backgroundImage: AssetImage("assets/insta/1.jpg"),
                        ),
                      ])
                    : CircleAvatar(
                        radius: 16,
                        backgroundImage: AssetImage("assets/insta/1.jpg"),
                      ),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
