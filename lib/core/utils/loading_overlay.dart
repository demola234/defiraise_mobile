import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

mixin LoadingOverlayMixin {
  OverlayEntry showLoadingOverlay(
      BuildContext context, OverlayEntry? overlayEntry) {
    OverlayEntry overlayEntry = OverlayEntry(
      builder: (context) => Container(
        color: Colors.black.withOpacity(0.5),
        child: Align(
            alignment: Alignment.center,
            child: LoadingAnimationWidget.hexagonDots(
              size: 100,
              color: Theme.of(context).primaryColor,
            )),
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
