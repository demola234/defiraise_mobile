part of '../_home.dart';

linearPercentage(int percentage, int total, AnimationController controller,
    BuildContext context,
    {double? width = 250, double? height}) {
  return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Stack(
          children: [
            Container(
              height: height ?? 15.sp,
              width: context.screenWidth(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.sp),
                color: AppColors.grey200.withOpacity(0.5),
              ),
            ),
            Container(
              height: height ?? 15.sp,
              width: width! * (percentage / total) * controller.value,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.black100,
              ),
            ),
          ],
        );
      });
}
