import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

abstract class ImgPickerService {
  Future<File> getImage(ImageSource source);
}

class ImgPickerServiceImpl implements ImgPickerService {
  ImgPickerServiceImpl({
    required ImagePicker imagePicker,
  }) : _imagePicker = imagePicker;

  factory ImgPickerServiceImpl.initialize() {
    return ImgPickerServiceImpl(
      imagePicker: ImagePicker(),
    );
  }

  final ImagePicker _imagePicker;

  bool hasImage = false;
  File? image;

  @override
  Future<File> getImage(ImageSource source) async {
    try {
      final image = await _imagePicker.pickImage(source: source);
      if (image == null) {
        throw Exception('Image not found');
      }

      final imageTemporary = File(image.path);

      return imageTemporary;
    } on PlatformException catch (e) {
      debugPrint('Failed to pick image: $e');
      throw Exception('Failed to pick image: $e');
    }
  }
}
