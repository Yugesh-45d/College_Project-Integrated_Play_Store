import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play_store_app/screens/other_apps/instagram/widgets/personal_post_widget.dart';


class InstaSearchPage extends StatelessWidget {
  const InstaSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CupertinoSearchTextField(
              itemColor: Colors.black,
            ),
          ),
          PersonalPost_Widget(),
        ],
      ),
    );
  }
}
