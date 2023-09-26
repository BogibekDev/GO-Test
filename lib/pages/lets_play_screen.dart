import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/assets.dart';
import '../utils/consts.dart';
import '../utils/res_colors.dart';
import 'test_screen.dart';


class LetsPlayScreen extends StatefulWidget {
  static const String id = "/letsPlayScreen";

  const LetsPlayScreen({super.key});

  @override
  State<LetsPlayScreen> createState() => _LetsPlayScreenState();
}

class _LetsPlayScreenState extends State<LetsPlayScreen> {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.letsPlayBg), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const Expanded(
                flex: 1,
                child: Center(
                  child: Image(
                    image: AssetImage(Assets.icLogo3),
                  ),
                )),
            Expanded(
              flex: 2,
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.w),
                    topRight: Radius.circular(40.w),
                  ),
                ),
                child: Column(
                  children: [
                    Divider(
                      thickness: 5.h,
                      color: ResColors.grey,
                      indent: 120.w,
                      endIndent: 120.w,
                    ),
                    SizedBox(height: 10.h),
                    const Expanded(
                      flex: 3,
                      child: Center(
                        child: Image(
                          image: AssetImage(Assets.imgTester),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.w, right: 30.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              Constants.title,
                              style: TextStyle(
                                color: ResColors.mainColor,
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              Constants.description,
                              style: TextStyle(
                                color: ResColors.grey,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 12.h),
                            Container(
                              height: 50.h,
                              width: MediaQuery.sizeOf(context).width,
                              padding: EdgeInsets.only(left: 10.w, right: 10.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.h),
                                border: Border.all(
                                  color: ResColors.mainColor,
                                  width: 3.sp,
                                ),
                              ),
                              child: Center(
                                child: TextField(
                                  // keyboardType: TextInputType.name,
                                  controller: _nameController,
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                      color: ResColors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    border: InputBorder.none,
                                    hintText: Constants.name,
                                    hintStyle: TextStyle(
                                      color: ResColors.grey,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TestScreen(
                name: _nameController.text.isEmpty
                    ? "someone"
                    : _nameController.text,
              ),
            ),
          );
        },
        backgroundColor: ResColors.mainColor,
        foregroundColor: ResColors.white,
        child: Icon(Icons.chevron_right, size: 28.sp),
      ),
    );
  }
}
