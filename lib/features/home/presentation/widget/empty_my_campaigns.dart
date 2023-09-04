import 'package:defiraiser_mobile/core/global/constants/app_json.dart';
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class EmptyMyCampaigns extends StatelessWidget {
  final String? title;
  final String? description;
  final Function()? onTap;

  const EmptyMyCampaigns({
    this.title,
    this.description,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          VerticalMargin(30),
          Align(
            alignment: Alignment.center,
            child: Lottie.asset(
              AppJsons.donations,
              width: 200.sp,
              height: 200.sp,
              reverse: true,
              repeat: true,
              fit: BoxFit.cover,
            ),
          ),
          VerticalMargin(10),
          // No Campaigns
          Text(
            title ?? '',
            style: Config.h2(context).copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
            ),
          ),
          VerticalMargin(15),
          // No Campaigns Description
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: context.screenWidth(0.5),
              padding: EdgeInsets.symmetric(
                horizontal: 10.sp,
                vertical: 15.sp,
              ),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.50),
                  borderRadius: BorderRadius.circular(50.sp),
                ),
              ),
              child: Center(
                child: Text(description ?? '',
                    textAlign: TextAlign.center,
                    style: Config.b2(context).copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
