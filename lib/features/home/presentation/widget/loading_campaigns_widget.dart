
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
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.white100,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Shimmer.fromColors(
                      baseColor: AppColors.grey300.withOpacity(0.2),
                      highlightColor: AppColors.white100.withOpacity(0.2),
                      child: Container(
                          height: 85.sp,
                          width: 90.sp,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.grey200.withOpacity(0.5),
                          )),
                    ),
                    HorizontalMargin(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Shimmer.fromColors(
                          baseColor: AppColors.grey300.withOpacity(0.2),
                          highlightColor:
                              AppColors.white100.withOpacity(0.2),
                          child: Container(
                              height: 16.sp,
                              width: 100.sp,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.grey200.withOpacity(0.5),
                              )),
                        ),
                        VerticalMargin(10),
                        Shimmer.fromColors(
                          baseColor: AppColors.grey300.withOpacity(0.2),
                          highlightColor:
                              AppColors.white100.withOpacity(0.2),
                          child: Container(
                              height: 16.sp,
                              width: 140.sp,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.grey200.withOpacity(0.5),
                              )),
                        ),
                        VerticalMargin(10),
                        Shimmer.fromColors(
                          baseColor: AppColors.grey300.withOpacity(0.2),
                          highlightColor:
                              AppColors.white100.withOpacity(0.2),
                          child: Container(
                              height: 16.sp,
                              width: 200.sp,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.grey200.withOpacity(0.5),
                              )),
                        ),
                      ],
                    )
                  ]),
            ),
          );
        });
  }
}
