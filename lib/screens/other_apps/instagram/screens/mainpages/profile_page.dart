// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:play_store_app/screens/other_apps/instagram/widgets/personal_post_widget.dart';
import 'package:play_store_app/screens/other_apps/instagram/widgets/profile_page_widget.dart';


class InstaProfilePage extends StatefulWidget {
  const InstaProfilePage({super.key});

  @override
  State<InstaProfilePage> createState() => _InstaProfilePageState();
}

class _InstaProfilePageState extends State<InstaProfilePage>
    with TickerProviderStateMixin {
  late final _tabcontroller;
  @override
  void initState() {
    _tabcontroller = TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Profile_Page_Widget(),
        TabBar(
          controller: _tabcontroller,
          tabs: [
            Tab(
              icon: Icon(
                Icons.grid_on_sharp,
                size: 28,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.account_box_outlined,
                size: 28,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(controller: _tabcontroller, children: [
            SingleChildScrollView(child: PersonalPost_Widget()),
            SingleChildScrollView(child: PersonalPost_Widget()),
            // PersonalPost_Widget(),
            // PersonalPost_Widget(),
          ]),
        ),
      ],
    );
  }
}
