import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'create_account_response.freezed.dart';
part 'create_account_response.g.dart';

CreateAccountResponse createAccountResponseFromJson(String str) => CreateAccountResponse.fromJson(json.decode(str));

String createAccountResponseToJson(CreateAccountResponse data) => json.encode(data.toJson());

@freezed
class CreateAccountResponse with _$CreateAccountResponse {
    const factory CreateAccountResponse({
         Data? data,
         @Default('') message,
        required int status,
    }) = _CreateAccountResponse;

    factory CreateAccountResponse.fromJson(Map<String, dynamic> json) => _$CreateAccountResponseFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
         @Default('') username,
         @Default('') email,
         DateTime? passwordChangedAt,
         DateTime? createdAt,
         @Default('') address,
         @Default('') balance,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
