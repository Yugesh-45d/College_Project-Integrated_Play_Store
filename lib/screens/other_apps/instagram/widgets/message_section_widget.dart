import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play_store_app/screens/other_apps/instagram/widgets/profile_account_widget.dart';

class MessageSectionWidget extends StatelessWidget {
  const MessageSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 32,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (context) {
                          return AccountModal();
                        },
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          "john_snow",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset(
                          "assets/insta/dropdown.png",
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // showModalBottomSheet(
                          //     isScrollControlled: true,
                          //     context: context,
                          //     backgroundColor: Colors.transparent,
                          //     builder: (context) {
                          //       return CreateModal();
                          //     });
                        },
                        child: Image.asset(
                          "assets/insta/add.png",
                          height: 28,
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      GestureDetector(
                        onTap: () {
                          // showModalBottomSheet(
                          //     isScrollControlled: true,
                          //     context: context,
                          //     backgroundColor: Colors.transparent,
                          //     builder: (context) {
                          //       return HamburgerModal();
                          //     });
                        },
                        child: Image.asset(
                          "assets/insta/menu.png",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CupertinoSearchTextField(
                itemColor: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Messages",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Requests",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/insta/1.jpg"),
                radius: 24,
              ),
              title: Text("Arya Stark"),
              subtitle: Text("Active 36m ago"),
              trailing: Icon(
                Icons.camera_alt_outlined,
                size: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
