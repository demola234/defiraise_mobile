import 'dart:convert';

import 'package:defiraiser_mobile/features/authentication/domain/entities/last_user_cache_details/last_user_cache_details.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tLastUserCachedDetails = LastUserCachedDetails(
    username: "test",
    email: "test@test.com",
    password: "test",
    isBiometric: false,
  );

  final tLastUserCachedDetailsJson = jsonEncode(tLastUserCachedDetails);

  group("test response on successful check user", () {
    test("should return a valid model", () {
      // arrange
      final result = LastUserCachedDetails.fromJson(tLastUserCachedDetailsJson);
      // assert
      expect(result, tLastUserCachedDetails);
    });
  });
}
