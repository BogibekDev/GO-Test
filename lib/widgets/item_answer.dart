import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/question.dart';
import '../utils/res_colors.dart';

class ItemAnswer extends StatefulWidget {
  final Answer answer;
  final Function()? onTap;

  const ItemAnswer(this.answer, {this.onTap, super.key});

  @override
  State<ItemAnswer> createState() => _ItemAnswerState();
}

class _ItemAnswerState extends State<ItemAnswer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
      width: MediaQuery.sizeOf(context).width,
      height: widget.answer.answer.length > 100 ? 70.sp : 60.sp,
      decoration: BoxDecoration(
        color: ResColors.white,
        borderRadius: BorderRadius.circular(10.sp),
        border: Border.all(
          color:
              widget.answer.isSelected ? ResColors.mainColor2 : ResColors.white,
          width: 3.sp,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            blurRadius: 10,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: InkWell(
        onTap: widget.onTap,
        child: Center(
          child: Text(
            widget.answer.answer,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
