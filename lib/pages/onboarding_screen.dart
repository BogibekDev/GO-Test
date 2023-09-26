import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../utils/assets.dart';
import '../utils/res_colors.dart';
import 'test_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String id = "/onBoardingScreen";

  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ResColors.white,
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Image(
                image: AssetImage(Assets.icLogo2),
              ),
            ),
          ),
          const Expanded(
            child: Center(
              child: Image(
                image: AssetImage(Assets.imgQuizTime),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(36.w),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TestScreen(name: 'Natija'),
                      ),
                    );
                  },
                  child: Container(
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: ResColors.mainColor,
                      borderRadius: BorderRadius.circular(30.h),
                    ),
                    child: Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: ResColors.white,
                          fontSize: 30.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
