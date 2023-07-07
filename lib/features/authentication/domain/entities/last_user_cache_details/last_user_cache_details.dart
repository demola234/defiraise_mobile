// 🎯 Dart imports:
import 'dart:convert';

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_user_cache_details.freezed.dart';
part 'last_user_cache_details.g.dart';

@freezed
class LastUserCachedDetails with _$LastUserCachedDetails {
  const factory LastUserCachedDetails({
    required String name,
    required String password,
    required String address,
  }) = _LastUserCachedDetails;

  factory LastUserCachedDetails.fromJson(String json) =>
      _$LastUserCachedDetailsFromJson(jsonDecode(json));
}
