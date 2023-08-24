import 'package:flutter/material.dart';
import 'package:play_store_app/screens/other_apps/instagram/widgets/instaPost_kebab_menu_widget.dart';
import 'package:play_store_app/screens/other_apps/instagram/widgets/insta_comment_widget.dart';
import 'package:rich_readmore/rich_readmore.dart';


class InstaPost_model extends StatefulWidget {
  final String profile_pic;
  final String username;
  final String location;
  final String upload_pic;
  final String upload_date;
  final String bio;

  const InstaPost_model({
    Key? key,
    required this.profile_pic,
    required this.username,
    required this.location,
    required this.upload_pic,
    required this.upload_date,
    required this.bio,
  }) : super(key: key);

  @override
  State<InstaPost_model> createState() => _InstaPost_modelState();
}

class _InstaPost_modelState extends State<InstaPost_model> {
  bool bookmarked = true;
  bool liked = true;
  int likeCounter = 86;
  void commentModal() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return InstaComment();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage(widget.profile_pic),
          ),
          title: Row(
            children: [
              Text(
                widget.username,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Image.asset(
                "assets/insta/verification.png",
                height: 16,
                width: 16,
              ),
            ],
          ),
          subtitle: Text(
            widget.location,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          trailing: IconButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return InstaPost_KebabMenu();
                  });
            },
            icon: Icon(
              Icons.more_vert_outlined,
              size: 24,
              color: Colors.black,
            ),
          ),
        ),
        //---------------MAIN IMAGE HERE---------------------
        Container(
          alignment: Alignment.center,
          child: Image.asset(
            widget.upload_pic,
            // height: 320,
            // fit: BoxFit.fill,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 12,
                bottom: 8,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        liked = !liked;
                        if (liked == false) {
                          likeCounter++;
                        } else {
                          likeCounter--;
                        }
                      });
                    },
                    child: Container(
                      child: liked
                          ? Icon(
                              Icons.favorite_outline_rounded,
                              size: 32,
                            )
                          : Icon(
                              Icons.favorite,
                              size: 32,
                              color: Colors.red,
                            ),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  GestureDetector(
                    onTap: () {
                      commentModal();
                    },
                    child: Image.asset(
                      "assets/insta/comment.png",
                      height: 28,
                      width: 28,
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Image.asset(
                    "assets/insta/share.png",
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
                top: 8,
                bottom: 8,
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    bookmarked = !bookmarked;
                  });
                },
                child: bookmarked
                    ? Image.asset(
                        "assets/insta/bookmark.png",
                        height: 32,
                      )
                    : Image.asset(
                        "assets/insta/bookmark_fill.png",
                        height: 32,
                      ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text("Liked by "),
              Text(
                "arya_stark ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "and ",
              ),
              Text(
                "$likeCounter others",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 4,
            left: 16,
            right: 16,
          ),
          child: RichReadMoreText(
            TextSpan(
              children: [
                TextSpan(
                  text: widget.username,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: widget.bio,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            settings: LineModeSettings(
              trimLines: 1,
              trimCollapsedText: '... more',
              trimExpandedText: '',
              moreStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 4),
          child: GestureDetector(
            onTap: () {
              commentModal();
            },
            child: Text(
              "View all 28 comments",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 4),
          child: Row(
            children: [
              Text(
                widget.upload_date,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
