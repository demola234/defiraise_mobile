import 'dart:convert';

import 'package:defiraiser_mobile/features/authentication/domain/entities/last_user_cache_details/last_user_cache_details.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tResponse = LastUserCachedDetails(
    name: 'testUser1',
    address: '0xaddress123',
    password: 'pass123',
  );

  group("test response on last user cache details", () {
    test("should return a valid model", () {
      // arrange
      final data = {
        'name': tResponse.name,
        'address': tResponse.address,
        'password': tResponse.password,
      };
      // act
      final result = LastUserCachedDetails.fromJson(jsonEncode(data));
      // assert
      expect(result, tResponse);
    });
  });
}
