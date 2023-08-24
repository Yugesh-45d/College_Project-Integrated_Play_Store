import 'package:flutter/material.dart';
import 'package:play_store_app/screens/other_apps/instagram/datas/insta_post_data.dart';
import 'package:play_store_app/screens/other_apps/instagram/models/insta_post_model.dart';

class InstaPost_widget extends StatelessWidget {
  const InstaPost_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...InstaPost_Data.map(
          (e) => InstaPost_model(
            profile_pic: e["profile_pic"],
            username: e["username"],
            location: e["location"],
            upload_pic: e["upload_pic"],
            upload_date: e["upload_date"],
            bio: e["bio"],
          ),
        ).toList(),
      ],
    );
  }
}
