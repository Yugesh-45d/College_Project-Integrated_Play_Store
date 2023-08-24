import 'package:flutter/material.dart';

class Story_Model extends StatelessWidget {
  final String username;
  final String photos;

  const Story_Model({
    Key? key,
    required this.username,
    required this.photos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8, right: 8),
      child: Column(
        children: [
          Stack(alignment: Alignment.center, children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.red,
            ),
            CircleAvatar(
              radius: 38,
              backgroundColor: Colors.white,
            ),
            CircleAvatar(
              radius: 36,
              backgroundImage: AssetImage(photos),
            ),
          ]),
          SizedBox(
            height: 4,
          ),
          Text(username),
        ],
      ),
    );
  }
}
