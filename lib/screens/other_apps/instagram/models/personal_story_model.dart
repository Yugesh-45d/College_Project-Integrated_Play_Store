import 'package:flutter/material.dart';

class Personal_Story_Model extends StatelessWidget {
  final String name;
  final String photo;

  const Personal_Story_Model({
    Key? key,
    required this.name,
    required this.photo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      child: Column(
        children: [
          Stack(alignment: Alignment.center, children: [
            CircleAvatar(
              radius: 33,
              backgroundColor: Colors.grey.shade400,
            ),
            CircleAvatar(
              radius: 32,
              backgroundColor: Colors.white,
            ),
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(photo),
            ),
          ]),
          SizedBox(
            height: 4,
          ),
          Text(
            name,
          ),
        ],
      ),
    );
  }
}
