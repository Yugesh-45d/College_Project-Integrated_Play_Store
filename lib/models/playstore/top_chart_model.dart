// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:play_store_app/config/app_colors.dart';
import 'package:play_store_app/config/app_fonts.dart';
import 'package:play_store_app/config/helper_func.dart';

class PlayStoreTopchartModel extends StatefulWidget {
  final String name;
  final String logo;
  final String category;
  final String size;
  final String index;
  final String ratings;

  const PlayStoreTopchartModel({
    Key? key,
    required this.name,
    required this.logo,
    required this.category,
    required this.size,
    required this.index,
    required this.ratings,
  }) : super(key: key);

  @override
  State<PlayStoreTopchartModel> createState() => _PlayStoreTopchartModelState();
}

class _PlayStoreTopchartModelState extends State<PlayStoreTopchartModel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppFunc.myPadding(),
      child: Row(
        children: [
          AppFunc.myText(text: widget.index),
          Padding(
            padding: AppFunc.myPadding(top: 0, bottom: 0),
            child: AppFunc.myLocalImage(
              image: widget.logo,
              height: 72,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppFunc.myText(
                text: widget.name,
                font: AppFonts.primaryFont,
                size: 18,
              ),
              AppFunc.myText(
                text: widget.category,
                size: 12,
                color: AppColors.fourthColor,
                weight: FontWeight.w600,
              ),
              AppFunc.mySizedbox(height: 2),
              Row(
                children: [
                  Row(
                    children: [
                      AppFunc.myText(
                        text: "${widget.ratings} ",
                        size: 14,
                        color: AppColors.fourthColor,
                        font: AppFonts.thirdFont,
                      ),
                      Icon(
                        Icons.star,
                        color: AppColors.fourthColor,
                        size: 14.h,
                      )
                    ],
                  ),
                  AppFunc.mySizedbox(width: 12),
                  AppFunc.myText(
                    text: widget.size,
                    size: 14,
                    color: AppColors.fourthColor,
                    font: AppFonts.thirdFont,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
