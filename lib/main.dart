import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'pages/lets_play_screen.dart';
import 'pages/onboarding_screen.dart';
import 'pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'GO Test',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const SplashScreen(),
          routes: {
            SplashScreen.id: (context) => const SplashScreen(),
            OnBoardingScreen.id: (context) => const OnBoardingScreen(),
            LetsPlayScreen.id: (context) => const LetsPlayScreen(),
          },
        );
      },
    );
  }
}
