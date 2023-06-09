import 'dart:io';

import 'package:defiraiser_mobile/core/utils/image_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'image_service_test.mocks.dart';

@GenerateMocks([ImagePicker])
void main() {
  late ImgPickerServiceImpl imgPickerService;
  late MockImagePicker mockImagePicker;

  setUp(() {
    mockImagePicker = MockImagePicker();
    imgPickerService = ImgPickerServiceImpl(imagePicker: mockImagePicker);
  });

  group("Pick An Image From Gallery", () {
    test("should return an image from gallery", () async {
      // arrange
      when(mockImagePicker.pickImage(source: ImageSource.gallery))
          .thenAnswer((_) async => XFile("path"));
      // act
      final result = await imgPickerService.getImage(ImageSource.gallery);

      // assert
      verify(mockImagePicker.pickImage(source: ImageSource.gallery));
      expect(result, isA<File>());
    });
  });

  group("Pick An Image From Camera", () {
    test("should return an image from camera", () async {
      // arrange
      when(mockImagePicker.pickImage(source: ImageSource.camera))
          .thenAnswer((_) async => XFile("path"));
      // act
      final result = await imgPickerService.getImage(ImageSource.camera);

      // assert
      verify(mockImagePicker.pickImage(source: ImageSource.camera));
      expect(result, isA<File>());
    });
  });
}
