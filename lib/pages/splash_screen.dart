import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_test/pages/lets_play_screen.dart';
import 'package:go_test/utils/res_colors.dart';

import '../utils/assets.dart';

class SplashScreen extends StatefulWidget {
  static const String id = "/splashScreen";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _runTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(color: ResColors.mainColor
            // image: DecorationImage(
            //   image: AssetImage(Assets.splashBg),
            //   fit: BoxFit.cover
            // ),
            ),
        child: Center(
          child: Image(
            width: 150.sp,
            image: const AssetImage(Assets.icLogoGo),
          ),
        ),
      ),
    );
  }

  void _runTimer() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, LetsPlayScreen.id);
    });
  }
}
