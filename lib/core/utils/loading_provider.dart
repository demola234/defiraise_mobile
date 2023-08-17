// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class LoadingOverlayProvider extends ChangeNotifier {
  /// Variable to store loading state
  bool _isLoading = false;

  /// Variable to store lottie color state
  /// True - For Scaffold White Background
  /// False - For Scaffold Blue Background
  bool _isWhiteBg = true;

  /// Getter for loading state
  bool get isLoading => _isLoading;

  /// Getter for animation color state
  ///
  /// True - For Scaffold White Background
  /// False - For Scaffold Blue Background
  bool get isWhiteBg => _isWhiteBg;

  /// Used to show loading animation
  /// [shouldRebuild] can be set to false if [setState(() {})]
  /// is already called.
  void show({bool shouldRebuild = true}) {
    _isLoading = true;
    if (shouldRebuild) {
      try {
        assert(ChangeNotifier.debugAssertNotDisposed(this));
        notifyListeners();
      } catch (_) {}
    }
  }

  /// Used to hide loading animation
  /// [shouldRebuild] can be set to false if [setState(() {})]
  /// is already called.
  void hide({bool shouldRebuild = true}) {
    _isLoading = false;
    if (shouldRebuild) {
      try {
        assert(ChangeNotifier.debugAssertNotDisposed(this));
        notifyListeners();
      } catch (_) {}
    }
  }

  /// Use to set loading animation color
  /// [shouldRebuild] can be set to false if [setState(() {})]
  /// is already called.
  ///
  /// Use;
  /// True - for [Scaffold] white background
  /// False - for [Scaffold] blue background
  void setIsWhiteBg(bool value, {bool shouldRebuild = true}) {
    _isWhiteBg = value;
    if (shouldRebuild) {
      try {
        assert(ChangeNotifier.debugAssertNotDisposed(this));
        notifyListeners();
      } catch (_) {}
    }
  }
}
