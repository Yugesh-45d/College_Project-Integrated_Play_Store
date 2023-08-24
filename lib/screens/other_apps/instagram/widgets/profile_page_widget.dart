import 'package:flutter/material.dart';
import 'package:play_store_app/screens/other_apps/instagram/datas/profile_page_data.dart';
import 'package:play_store_app/screens/other_apps/instagram/models/profile_page_model.dart';

class Profile_Page_Widget extends StatelessWidget {
  const Profile_Page_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...profilePageData.map(
          (e) => Profile_Page_Model(
            profile_pic: e['profile_pic'],
            username: e['username'],
            name: e['name'],
            posts: e['posts'],
            followers: e['followers'],
            following: e['following'],
            bio: e['bio'],
          ),
        ),
      ],
    );
  }
}
