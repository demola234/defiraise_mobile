
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/global/themes/color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class LoadingCampaigns extends StatelessWidget {
  const LoadingCampaigns({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: AppColors.grey300.withOpacity(0.2),
            highlightColor:
                AppColors.white100.withOpacity(0.3),
            child: Column(
              children: [
                VerticalMargin(20),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.sp,
                  ),
                  child: Container(
                    width: 55.sp,
                    height: 55.sp,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
