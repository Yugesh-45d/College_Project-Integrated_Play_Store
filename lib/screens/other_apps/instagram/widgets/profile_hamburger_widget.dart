import 'package:flutter/material.dart';

class HamburgerModal extends StatefulWidget {
  const HamburgerModal({super.key});

  @override
  State<HamburgerModal> createState() => _HamburgerModalState();
}

class _HamburgerModalState extends State<HamburgerModal> {
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
          ListTile(
            dense: true,
            visualDensity: VisualDensity(
              vertical: 0,
            ),
            leading: Icon(
              Icons.settings,
              color: Colors.black,
              size: 28,
            ),
            title: Text(
              "Settings and privacy",
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
              Icons.access_time,
              color: Colors.black,
              size: 28,
            ),
            title: Text(
              "Your activity",
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
            leading: Image.asset(
              "assets/insta/history.png",
              height: 28,
            ),
            title: Text(
              "Archive",
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
              Icons.qr_code_rounded,
              color: Colors.black,
              size: 28,
            ),
            title: Text(
              "QR code",
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
            leading: Image.asset(
              "assets/insta/bookmark.png",
              height: 28,
            ),
            title: Text(
              "Saved",
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
            leading: Image.asset(
              "assets/insta/people.png",
              height: 28,
            ),
            title: Text(
              "Supervision",
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
              Icons.payment_rounded,
              color: Colors.black,
              size: 28,
            ),
            title: Text(
              "Orders and payments",
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
              Icons.list,
              color: Colors.black,
              size: 28,
            ),
            title: Text(
              "Close Friends",
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
              Icons.star_border_sharp,
              color: Colors.black,
              size: 28,
            ),
            title: Text(
              "Favorites",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
