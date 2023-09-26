import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/assets.dart';
import 'onboarding_screen.dart';


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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.splashBg),
            fit: BoxFit.cover
          ),
        ),
        child: Center(
          child: SvgPicture.asset(Assets.icLogo),
        ),
      ),
    );
  }

  void _runTimer() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, OnBoardingScreen.id);
    });
  }
}
