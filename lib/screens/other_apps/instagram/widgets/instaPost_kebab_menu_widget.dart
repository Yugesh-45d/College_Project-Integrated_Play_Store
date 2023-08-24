import 'package:flutter/material.dart';

class InstaPost_KebabMenu extends StatefulWidget {
  const InstaPost_KebabMenu({super.key});

  @override
  State<InstaPost_KebabMenu> createState() => _InstaPost_KebabMenuState();
}

class _InstaPost_KebabMenuState extends State<InstaPost_KebabMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 496,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: ListView(
        children: [
          Icon(
            Icons.horizontal_rule_rounded,
            size: 56,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    height: 56,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Image.asset(
                      "assets/insta/bookmark.png",
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Save",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 56,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Image.asset(
                      "assets/insta/remix.png",
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Remix",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Image.asset(
                      "assets/insta/qr.png",
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "QR code",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Divider(),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(
              vertical: 0,
            ),
            leading: Icon(
              Icons.star_border_rounded,
              color: Colors.black,
              size: 28,
            ),
            title: Text(
              "Add to favorites",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(
              vertical: 0,
            ),
            leading: Icon(
              Icons.person_remove_outlined,
              color: Colors.black,
              size: 28,
            ),
            title: Text(
              "Unfollow",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Divider(),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(
              vertical: 0,
            ),
            leading: Icon(
              Icons.info_outline_rounded,
              color: Colors.black,
              size: 28,
            ),
            title: Text(
              "Why you're seeing this post",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(
              vertical: 0,
            ),
            leading: Icon(
              Icons.visibility_off_outlined,
              color: Colors.black,
              size: 28,
            ),
            title: Text(
              "Hide",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(
              vertical: 0,
            ),
            leading: Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
              size: 28,
            ),
            title: Text(
              "About this account",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(
              vertical: 0,
            ),
            leading: Icon(
              Icons.report_gmailerrorred,
              color: Colors.red,
              size: 28,
            ),
            title: Text(
              "Report",
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
