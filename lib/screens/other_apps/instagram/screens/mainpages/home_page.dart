import 'package:flutter/material.dart';
import 'package:play_store_app/screens/other_apps/instagram/widgets/insta_post_widget.dart';
import 'package:play_store_app/screens/other_apps/instagram/widgets/message_section_widget.dart';
import 'package:play_store_app/screens/other_apps/instagram/widgets/story_widget.dart';


class Insta_HomePage extends StatefulWidget {
  const Insta_HomePage({super.key});

  @override
  State<Insta_HomePage> createState() => _Insta_HomePageState();
}

class _Insta_HomePageState extends State<Insta_HomePage> {
  void showPopupMenu() {
    showMenu(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      context: context,
      position: RelativeRect.fromLTRB(16, 88, 80, 0),
      items: [
        PopupMenuItem(
          child: Row(
            children: [
              Text(
                "Following",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                width: 24,
              ),
              Image.asset(
                "assets/insta/people.png",
                width: 32,
              ),
            ],
          ),
        ),
        PopupMenuItem(
          child: Row(
            children: [
              Text(
                "Favorites",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                width: 24,
              ),
              Icon(
                Icons.star_border_rounded,
                size: 32,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // controller: ScrollController(),
      // physics: NeverScrollableScrollPhysics(parent: ScrollPhysics()),
      child: Column(
        children: [
          //---------------------- Instagram and icons sections row begins------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: GestureDetector(
                  onTap: () {
                    showPopupMenu();
                  },
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage("assets/insta/2.png"),
                        height: 64,
                        width: 120,
                      ),
                      Image.asset(
                        "assets/insta/dropdown.png",
                        height: 24,
                        width: 24,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite_outline_rounded,
                      size: 28,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MessageSectionWidget()));
                      },
                      child: Container(
                        child: Image.asset(
                          "assets/insta/messenger.png",
                          height: 28,
                          width: 28,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          //---------------------Top Instagram and icons row sections ends------------------
          Insta_Story_Widget(),
          InstaPost_widget(),
          //----------------------------------------------------------------------------
        ],
      ),
    );
  }
}
