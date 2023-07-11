import 'dart:convert';

import 'package:defiraiser_mobile/features/authentication/domain/entities/last_user_cache_details/last_user_cache_details.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tResponse = LastUserCachedDetails(
      username: 'testUser1',
      password: 'pass123',
      isBiometric: true,
      email: 'test@test.com');

  group("test response on last user cache details", () {
    test("should return a valid model", () {
      // arrange
      final data = {
        'name': tResponse.username,
        'password': tResponse.password,
        'isBiometric': tResponse.isBiometric,
        'email': tResponse.email,
      };
      // act
      final result = LastUserCachedDetails.fromJson(jsonEncode(data));
      // assert
      expect(result, tResponse);
    });
  });
}
