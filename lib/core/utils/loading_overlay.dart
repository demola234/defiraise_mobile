import 'package:defiraiser_mobile/core/global/constants/app_images.dart';
import 'package:defiraiser_mobile/core/global/themes/color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

mixin LoadingOverlayMixin {
  OverlayEntry showLoadingOverlay(
      BuildContext context, OverlayEntry? overlayEntry) {
    OverlayEntry overlayEntry = OverlayEntry(
      builder: (context) => Container(
        color: Colors.black.withOpacity(0.5),
        child: Stack(
          children: [
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 50.sp,
                  width: 50.sp,
                  child: Image(
                    image: AssetImage(AppImages.LoaderLogo),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: LoadingAnimationWidget.threeArchedCircle(
                  size: 80.sp,
                  color: AppColors.white100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    Overlay.of(context).insert(overlayEntry);
    return overlayEntry;
  }

  OverlayEntry hideLoadingOverlay(
      BuildContext context, OverlayEntry? overlayEntry) {
    overlayEntry?.remove();
    return overlayEntry!;
  }
}
