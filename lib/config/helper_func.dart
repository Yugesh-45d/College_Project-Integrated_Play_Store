import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:play_store_app/config/app_colors.dart';
import 'package:play_store_app/config/app_fonts.dart';

class AppFunc {
  //----------------------------For Normal Text---------------------------------------------
  static Text myText({
    required String text,
    Color color = AppColors.primaryColor,
    double size = 16,
    FontWeight weight = FontWeight.normal,
    TextAlign alignment = TextAlign.center,
    String? font,
  }) {
    String fontFamily = font ?? AppFonts.secondaryFont;
    return Text(
      text,
      textAlign: alignment,
      style: TextStyle(
        color: color,
        fontSize: size.sp,
        fontWeight: weight,
        fontFamily: fontFamily,
      ),
    );
  }

//----------------------------For Asset Image---------------------------------------------
  static Image myLocalImage({required String image, double height = 40}) {
    return Image.asset(
      'assets/$image',
      height: height.h,
    );
  }

  //----------------------------For Padding---------------------------------------------
  static EdgeInsets myPadding(
      {double left = 16,
      double right = 16,
      double top = 16,
      double bottom = 16}) {
    return EdgeInsets.only(
        left: left.w, right: right.w, top: top.h, bottom: bottom.h);
  }

//----------------------------For Buttons---------------------------------------------
  static SizedBox myButton({
    required String text,
    bool isFilled = true,
    Color color = AppColors.thirdColor,
    double borderRadius = 16,
    double width = double.maxFinite,
    double height = 52,
    double textSize = 18,
    // required Future<void> Function() func,
    required void Function() func,
  }) {
    return SizedBox(
      height: height.h,
      width: width.w,
      child: TextButton(
        style: TextButton.styleFrom(
          elevation: 8,
          backgroundColor: isFilled ? color : Colors.transparent,
          side: BorderSide(
              style: isFilled ? BorderStyle.none : BorderStyle.solid,
              color:
                  isFilled ? AppColors.secondaryColor : AppColors.primaryColor,
              width: 1.w),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius.r),
          ),
        ),
        onPressed: () {
          func();
        },
        child: AppFunc.myText(
          text: text,
          color: isFilled ? AppColors.secondaryColor : AppColors.primaryColor,
          weight: FontWeight.bold,
          size: textSize,
        ),
      ),
    );
  }

//----------------------------For Other TextFields---------------------------------------------
  static SizedBox myTextfield({
    required TextEditingController controller,
    required TextInputType keyboardType,
    required String hint,
    required FocusNode focusNode,
    required Key key,
  }) {
    return SizedBox(
      height: 80.h,
      width: double.maxFinite,
      child: TextFormField(
        validator: (String? value) {
          if (value!.isEmpty) {
            return "Valid $hint is required";
          } else {
            return null;
          }
        },
        key: key,
        focusNode: focusNode,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
      ),
    );
  }

//----------------------------For Password TextField---------------------------------------------
  static SizedBox myTextfieldPassword({
    required TextEditingController controller,
    required void Function() func,
    required bool showPassword,
    required FocusNode focusNode,
    required Key key,
  }) {
    return SizedBox(
      height: 80.h,
      width: double.maxFinite,
      child: TextFormField(
        validator: (String? value) {
          if (value!.isEmpty) {
            return "Password is required";
          } else {
            return null;
          }
        },
        focusNode: focusNode,
        key: key,
        keyboardType: TextInputType.visiblePassword,
        controller: controller,
        obscureText: !showPassword,
        decoration: InputDecoration(
          labelText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              func();
            },
            icon: showPassword
                ? const Icon(
                    Icons.visibility,
                  )
                : const Icon(
                    Icons.visibility_off,
                  ),
          ),
        ),
      ),
    );
  }

//----------------------------For Sizedbox---------------------------------------------
  static SizedBox mySizedbox({double height = 0, double width = 0}) {
    return SizedBox(
      height: height.h,
      width: width.w,
    );
  }

  //----------------------------For Cupertino Widget---------------------------------------------

  static CupertinoListTile myListCupertinoListTile({required String text}) {
    return CupertinoListTile(
      title: AppFunc.myText(
        text: text,
        font: AppFonts.thirdFont,
        size: 20,
        color: AppColors.primaryColor,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: AppColors.primaryColor,
        size: 20,
      ),
    );
  }
  //----------------------------For ImagePicker Widget---------------------------------------------

  static pickImage(ImageSource source) async {
    final ImagePicker imagePicker = ImagePicker();

    XFile? file = await imagePicker.pickImage(source: source);

    if (file != null) {
      return await file.readAsBytes();
    }
  }
}
