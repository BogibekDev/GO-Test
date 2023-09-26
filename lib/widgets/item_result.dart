import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/result.dart';
import '../utils/res_colors.dart';

class ItemResult extends StatefulWidget {
  final Result _result;
  final Function()? onTap;

  const ItemResult(this._result, {this.onTap, super.key});

  @override
  State<ItemResult> createState() => _ItemResultState();
}

class _ItemResultState extends State<ItemResult> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
      padding: EdgeInsets.all(20.sp),
      width: MediaQuery.sizeOf(context).width,
      height: 100.sp,
      decoration: BoxDecoration(
        color: ResColors.white,
        borderRadius: BorderRadius.circular(10.sp),
        border: Border.all(
          color: ResColors.white,
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
        image: DecorationImage(
          image: AssetImage(widget._result.image),
          fit: BoxFit.cover,
        ),
      ),
      child: InkWell(
        onTap: widget.onTap,
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget._result.category,
              style: TextStyle(color: ResColors.white, fontSize: 26.sp),
            ),
            Text("${widget._result.percentage}%",
                style: TextStyle(color: ResColors.white, fontSize: 26.sp)),
          ],
        )),
      ),
    );
  }
}
