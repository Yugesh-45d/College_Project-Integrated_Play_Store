import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:play_store_app/config/helper_func.dart';
import 'package:play_store_app/screens/playstore_app/playstore_homepage.dart';

class MeroMusicHomePage extends StatelessWidget {
  const MeroMusicHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    void playSound(int soundNumber) {
      final player = AudioPlayer();
      player.play(
        AssetSource("music/note$soundNumber.wav"),
      );
    }

    Expanded soundCollection(Color color, int soundNumber) {
      return Expanded(
        child: AppFunc.myButton(
            text: "",
            func: () {
              playSound(soundNumber);
            },
            color: color,
            borderRadius: 0),
      );
    }

    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => PlayStoreHomePage()));
          return true;
        },
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              soundCollection(Colors.yellow, 1),
              soundCollection(Colors.red, 2),
              soundCollection(Colors.green, 3),
              soundCollection(Colors.blue, 4),
              soundCollection(Colors.brown, 5),
              soundCollection(Colors.purple, 6),
              soundCollection(Colors.orange, 7),
            ],
          ),
        ),
      ),
    );
  }
}
