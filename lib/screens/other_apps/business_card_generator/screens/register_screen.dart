import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:play_store_app/screens/other_apps/business_card_generator/models/data_model.dart';
import 'package:play_store_app/screens/other_apps/business_card_generator/provider/image_provider.dart';
import 'package:play_store_app/screens/other_apps/business_card_generator/screens/home_screen.dart';
import 'package:provider/provider.dart';

import '../../../../config/app_colors.dart';
import '../../../../config/app_fonts.dart';
import '../../../../config/helper_func.dart';

class BusinessCardDataRegister extends StatefulWidget {
  const BusinessCardDataRegister({super.key});

  @override
  State<BusinessCardDataRegister> createState() =>
      _BusinessCardDataRegisterState();
}

class _BusinessCardDataRegisterState extends State<BusinessCardDataRegister> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final professionController = TextEditingController();
  final phoneNumberController = TextEditingController();

  Uint8List? image;
  void selectImage() async {
    Uint8List im = await AppFunc.pickImage(ImageSource.gallery);
    setState(() {
      image = im;
    });
  }

  BusinessCardDataModel getDatas() {
    return BusinessCardDataModel(
        name: nameController.text,
        email: emailController.text,
        profession: professionController.text,
        phoneNumber: phoneNumberController.text,
        image: image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 0,
      ),
      body: Consumer<BusinessCardDataProvider>(
        builder: (context, value, child) => SingleChildScrollView(
          child: Padding(
            padding: AppFunc.myPadding(top: 0, bottom: 0, left: 8, right: 8),
            child: Column(
              children: [
                AppFunc.mySizedbox(height: 16),
                AppFunc.myText(
                  text: "Business Card Maker",
                  color: AppColors.thirdColor,
                  weight: FontWeight.bold,
                  font: AppFonts.primaryFont,
                  size: 32,
                ),
                AppFunc.mySizedbox(height: 24),
                AppFunc.myText(
                  text:
                      "Enter the data to generate your personalized business card",
                  color: Colors.deepPurple,
                  weight: FontWeight.bold,
                  size: 20,
                ),
                AppFunc.mySizedbox(height: 24),
                GestureDetector(
                  onTap: () {
                    selectImage();
                  },
                  child: image != null
                      ? CircleAvatar(
                          backgroundImage: MemoryImage(image!),
                          radius: 48.r,
                        )
                      : Stack(
                          children: [
                            CircleAvatar(
                              radius: 48.r,
                              child: AppFunc.myLocalImage(
                                  image: "2.png", height: 64),
                            ),
                            Positioned(
                              bottom: 4,
                              right: 4,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 12.r,
                                    backgroundColor: Colors.white,
                                  ),
                                  CircleAvatar(
                                    radius: 10.r,
                                    backgroundColor: AppColors.primaryColor,
                                    child: Icon(
                                      Icons.add,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                ),
                AppFunc.mySizedbox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: professionController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Profession",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: phoneNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
                AppFunc.mySizedbox(height: 16),
                AppFunc.myButton(
                    borderRadius: 32,
                    text: "Generate",
                    func: () {
                      value.addToList(getDatas());
                      Fluttertoast.showToast(
                          backgroundColor: Colors.green,
                          msg: "Generated sucessfully");
                      Navigator.pushReplacement(
                          context,
                          (MaterialPageRoute(builder: (context) {
                            return BusinessCardGeneratorScreen();
                          })));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
