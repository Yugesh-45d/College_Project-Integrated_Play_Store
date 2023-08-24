// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:play_store_app/config/app_fonts.dart';
import 'package:play_store_app/config/helper_func.dart';
import 'package:play_store_app/screens/playstore_app/playstore_homepage.dart';

import '../models/quiz_model.dart';

class MeroQuizHomePage extends StatefulWidget {
  const MeroQuizHomePage({super.key});

  @override
  State<MeroQuizHomePage> createState() => _MeroQuizHomePageState();
}

class _MeroQuizHomePageState extends State<MeroQuizHomePage> {
  int score = 0;
  int currentQuestion = 0;
  List<MeroQuizModel> quizes = [];

  Future getQuestions() async {
    http.Response response = await http.get(
        Uri.parse(
          "https://cloud.appwrite.io/v1/databases/64bcd648a75f0f5988d5/collections/64bcd65c3f4089519ddc/documents",
        ),
        headers: {
          'Content-Type': 'application/json',
          'X-Appwrite-Project': '64bcd61aae23d6f6adee',
        });

    if (response.statusCode == 200) {
      setState(() {
        for (var item in jsonDecode(response.body)['documents']) {
          quizes.add(MeroQuizModel(
              item['title'],
              item['option1'],
              item['option2'],
              item['option3'],
              item['option4'],
              item['correctoption']));
        }
      });
    }
  }

  reset() {
    setState(() {
      currentQuestion = 0;
      score = 0;
    });
  }

  checkAnswer(int userchoice) {
    setState(() {
      if (quizes[currentQuestion].correctoption == userchoice) {
        score++;
      }
      if (currentQuestion == quizes.length - 1) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Result"),
            content: Text("Your score is $score out of ${quizes.length}"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  reset();
                },
                child: Text("Play again"),
              ),
            ],
          ),
        );
        return;
      }
      currentQuestion++;
    });
  }

  @override
  void initState() {
    getQuestions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => PlayStoreHomePage()));
          return true;
        },
        child: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PlayStoreHomePage()));
              },
              child: Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
            ),
            backgroundColor: Color(0xff5A2D92),
            title: Text(
              "Mero Quiz",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            centerTitle: true,
          ),
          body: quizes.isNotEmpty
              ? Column(
                  children: [
                    SizedBox(height: 40.h),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.w,
                        right: 16.w,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          color: Colors.deepPurple,
                        ),
                        alignment: Alignment.center,
                        height: 200.h,
                        width: double.maxFinite.w,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: AppFunc.myText(
                            text: quizes[currentQuestion].title,
                            size: 24,
                            font: AppFonts.thirdFont,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 16.w, right: 16.w, top: 8.h, bottom: 8.h),
                      child: AppFunc.myButton(
                          color: Colors.green,
                          text: quizes[currentQuestion].option1,
                          func: () {
                            checkAnswer(1);
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 16.w, right: 16.w, top: 8.h, bottom: 8.h),
                      child: AppFunc.myButton(
                          color: Colors.green,
                          text: quizes[currentQuestion].option2,
                          func: () {
                            checkAnswer(2);
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 16.w, right: 16.w, top: 8.h, bottom: 8.h),
                      child: AppFunc.myButton(
                          color: Colors.green,
                          text: quizes[currentQuestion].option3,
                          func: () {
                            checkAnswer(3);
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 16.w, right: 16.w, top: 8.h, bottom: 8.h),
                      child: AppFunc.myButton(
                          color: Colors.green,
                          text: quizes[currentQuestion].option4,
                          func: () {
                            checkAnswer(4);
                          }),
                    ),
                  ],
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              reset();
            },
            child: Icon(
              Icons.refresh,
            ),
          ),
        ),
      ),
    );
  }
}
