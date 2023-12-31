import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store_app/config/app_colors.dart';
import 'package:play_store_app/screens/other_apps/business_card_generator/provider/image_provider.dart';
import 'package:play_store_app/screens/other_apps/notes/providers/provider_data.dart';
import 'package:play_store_app/screens/playstore_app/body_pages/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 720),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (context) => BusinessCardDataProvider()),
          ChangeNotifierProvider(create: (context) => NotesAppProviderData()),
        ],
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Meta News App',
          theme: ThemeData(
            fontFamily: GoogleFonts.inter().fontFamily,
            colorScheme: ColorScheme.fromSeed(
              seedColor: AppColors.thirdColor,
            ),
            useMaterial3: true,
          ),
          home: PlayStoreSplashScreen(),
        ),
      ),
    );
  }
}
