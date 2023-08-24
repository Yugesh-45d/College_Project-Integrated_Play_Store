import 'package:flutter/material.dart';
import 'package:play_store_app/screens/other_apps/instagram/datas/personal_post.dart';

class PersonalPost_Widget extends StatelessWidget {
  const PersonalPost_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
        ),
        itemCount: PersonalPost_Data.length,
        itemBuilder: (context, index) {
          return Image.asset(
            PersonalPost_Data[index],
            fit: BoxFit.fill,
          );
        });
  }
}
