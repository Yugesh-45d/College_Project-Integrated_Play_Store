import 'package:flutter/material.dart';
import 'package:play_store_app/screens/other_apps/instagram/widgets/profile_create_widget.dart';
import 'package:play_store_app/screens/other_apps/instagram/widgets/profile_hamburger_widget.dart';

import '../widgets/personal_story_widget.dart';
import '../widgets/profile_account_widget.dart';

class Profile_Page_Model extends StatelessWidget {
  final String profile_pic;
  final String username;
  final String name;
  final String bio;
  final String posts;
  final String followers;
  final String following;

  const Profile_Page_Model({super.key, required this.profile_pic, required this.username, required this.name, required this.posts, required this.followers, required this.following, required this.bio});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (context) {
                      return AccountModal();
                    },
                  );
                },
                child: Row(
                  children: [
                    Text(
                      username,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset(
                      "assets/insta/dropdown.png",
                      height: 24,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return CreateModal();
                          });
                    },
                    child: Image.asset(
                      "assets/insta/add.png",
                      height: 28,
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return HamburgerModal();
                          });
                    },
                    child: Image.asset(
                      "assets/insta/menu.png",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        //----------------------Profile Image and followers haru wala section-------------------------
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(profile_pic),
                radius: 40,
              ),
              Column(
                children: [
                  Text(
                    posts,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Posts",
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    followers,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Followers",
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    following,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Following",
                  ),
                ],
              ),
            ],
          ),
        ),
        //----------------------Name and bio Section---------------
        Padding(
          padding: const EdgeInsets.only(
            top: 12,
            left: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                bio,
              ),
            ],
          ),
        ),
        //-------------------------Edit, Share Profile Button Section------------
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  fixedSize: Size.fromWidth(140),
                  backgroundColor: Color(0xffebebeb),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Edit profile",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  fixedSize: Size.fromWidth(140),
                  backgroundColor: Color(0xffebebeb),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Share profile",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 36,
                  width: 36,
                  child: Icon(
                    Icons.person_add_outlined,
                    size: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffebebeb),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              )
            ],
          ),
        ),
        Personal_Story_Widget(),
      ],
    );
  }
}
