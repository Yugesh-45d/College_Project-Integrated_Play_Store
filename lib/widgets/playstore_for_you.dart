import 'package:flutter/material.dart';
import 'package:play_store_app/config/helper_func.dart';

class PlayStoreForyou extends StatelessWidget {
  const PlayStoreForyou({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppFunc.myText(text: "Productivity"),
                Icon(Icons.arrow_forward),
              ],
            ),
            ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [],
                  );
                })
          ],
        ),
      ],
    );
  }
}
