// 🎯 Dart imports:
import 'dart:convert';

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_user_cache_details.freezed.dart';
part 'last_user_cache_details.g.dart';

@freezed
class LastUserCachedDetails with _$LastUserCachedDetails {
  const factory LastUserCachedDetails({
    required String username,
    required String email,
    required String password,
    required bool isBiometric,
  }) = _LastUserCachedDetails;

  factory LastUserCachedDetails.fromJson(String json) =>
      _$LastUserCachedDetailsFromJson(jsonDecode(json));
}
