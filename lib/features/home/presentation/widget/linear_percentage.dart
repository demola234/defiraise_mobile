part of '../home.dart';

linearPercentage(int percentage, int total, AnimationController controller,
    BuildContext context) {
  return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Stack(
          children: [
            Container(
              height: 15,
              width: context.screenWidth(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.grey200.withOpacity(0.5),
              ),
            ),
            Container(
              height: 15,
              width: 250 * (percentage / total) * controller.value,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.black100,
              ),
            ),
          ],
        );
      });
}
