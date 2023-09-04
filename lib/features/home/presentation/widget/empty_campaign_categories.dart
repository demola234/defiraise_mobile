import 'package:defiraiser_mobile/core/global/constants/app_json.dart';
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class EmptyCampaignCategories extends StatelessWidget {
  final String? title;
  final String? description;

  const EmptyCampaignCategories({
    this.title,
    this.description,
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
            title ?? 'No Campaigns Available',
            style: Config.h2(context).copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
            ),
          ),
          VerticalMargin(2),
          // No Campaigns Description
          Text(
            description ?? 'There are no campaigns in this category',
            textAlign: TextAlign.center,
            style: Config.b2(context).copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
