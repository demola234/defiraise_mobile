
import 'package:defiraiser_mobile/core/global/constants/app_json.dart';
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class ErrorStateWidget extends StatelessWidget {
  final Function()? onTap;
  const ErrorStateWidget({
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalMargin(30),
        Align(
          alignment: Alignment.center,
          child: Lottie.asset(
            AppJsons.error,
            width: 200.sp,
            height: 200.sp,
            reverse: true,
            repeat: true,
            fit: BoxFit.cover,
          ),
        ),
        VerticalMargin(10),
        // refresh button
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: context.screenWidth(0.5),
            padding: EdgeInsets.symmetric(
              horizontal: 10.sp,
              vertical: 10.sp,
            ),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 0.50),
                borderRadius: BorderRadius.circular(50.sp),
              ),
            ),
            child: Center(
              child: Text("Refresh"),
            ),
          ),
        ),
      ],
    );
  }
}
