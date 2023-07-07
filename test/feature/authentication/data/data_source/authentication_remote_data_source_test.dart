import 'dart:convert';

import 'package:defiraiser_mobile/core/global/error/exceptions.dart';
import 'package:defiraiser_mobile/core/network/endpoint_manager.dart';
import 'package:defiraiser_mobile/core/network/network_provider.dart';
import 'package:defiraiser_mobile/features/authentication/data/data_source/authentication_remote_data_source.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/login_entity/login_response_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fixture/fixture_reader.dart';

class MockNetworkProvider extends Mock implements NetworkProvider {}

void main() {
  late MockNetworkProvider mockNetworkProvider;
  late AuthenticationRemoteDataSource authenticationRemoteDataSource;
  late String tUsername = "test";
  late String tEmail = "test@test.com";
  late String tPassword = "test";
  late String tOtpCode = "123456";

  setUp(() {
    mockNetworkProvider = MockNetworkProvider();
    authenticationRemoteDataSource =
        IAuthenticationRemoteDataSource(mockNetworkProvider);
    tUsername = "test";
    tEmail = "test@test.com";
  });

  void setUpMockHttpManager() {
    when(() => mockNetworkProvider.call(
            path: EndpointManager.createAccount,
            method: RequestMethod.post,
            body: {
              "username": tUsername,
              "email": tEmail,
            })).thenAnswer((_) async {
      return Response(
          requestOptions: RequestOptions(path: EndpointManager.createAccount),
          data: json.decode(fixture('create_account_response.json')),
          statusCode: 200);
    });
  }

  void setUpMockLoginHttpManager() {
    when(() => mockNetworkProvider.call(
            path: EndpointManager.login,
            method: RequestMethod.post,
            body: {
              "username": tUsername,
              "password": tPassword,
            })).thenAnswer((_) async {
      return Response(
          requestOptions: RequestOptions(path: EndpointManager.login),
          data: json.decode(fixture('login_response.json')),
          statusCode: 200);
    });
  }

  void setUpMockResendOTPHttpManager() {
    when(() => mockNetworkProvider.call(
            path: EndpointManager.resendOTP,
            method: RequestMethod.post,
            body: {
              "username": tUsername,
            })).thenAnswer((_) async {
      return Response(
          requestOptions: RequestOptions(path: EndpointManager.resendOTP),
          data: json.decode(fixture('base_response.json')),
          statusCode: 200);
    });
  }

  void setUpMockResetPasswordHttpManager() {
    when(() => mockNetworkProvider.call(
            path: EndpointManager.resetPassword,
            method: RequestMethod.post,
            body: {
              "username": tUsername,
            })).thenAnswer((_) async {
      return Response(
          requestOptions: RequestOptions(path: EndpointManager.resetPassword),
          data: json.decode(fixture('base_response.json')),
          statusCode: 200);
    });
  }

  void setUpMockVerifyOtpHttpManager() {
    when(() => mockNetworkProvider.call(
            path: EndpointManager.verifyOTP,
            method: RequestMethod.post,
            body: {
              "username": tUsername,
              "otp_code": tOtpCode,
            })).thenAnswer((_) async {
      return Response(
          requestOptions: RequestOptions(path: EndpointManager.resendOTP),
          data: json.decode(fixture('base_response.json')),
          statusCode: 200);
    });
  }

  void setUpMockVerifyPasswordResetCodeHttpManager() {
    when(() => mockNetworkProvider.call(
            path: EndpointManager.confirmReset,
            method: RequestMethod.post,
            body: {
              "username": tUsername,
              "password": tPassword,
              "otp_code": tOtpCode,
            })).thenAnswer((_) async {
      return Response(
          requestOptions: RequestOptions(path: EndpointManager.confirmReset),
          data: json.decode(fixture('base_response.json')),
          statusCode: 200);
    });
  }

  group("create user account", () {
    test("should return Create User Response when the call is successful",
        () async {
      setUpMockHttpManager();
      final result = await authenticationRemoteDataSource.createAccount(
          tUsername, tEmail);
      expect(result, isA<CreateAccountResponse>());
    });

    test("should throw ServerException when the call is unsuccessful",
        () async {
      when(() => mockNetworkProvider.call(
              path: EndpointManager.createAccount,
              method: RequestMethod.post,
              body: {
                "username": tUsername,
                "email": tEmail,
              })).thenAnswer((_) async {
        return Response(
            requestOptions: RequestOptions(path: EndpointManager.createAccount),
            data: json.decode(fixture('create_account_response_failed.json')),
            statusCode: 400);
      });
      final call = authenticationRemoteDataSource.createAccount;
      expect(() => call(tUsername, tEmail),
          throwsA(isA<ServerException>()));
    });
  });

  group("login user account", () {
    test("should return Login Response when the call is successful", () async {
      setUpMockLoginHttpManager();
      final result =
          await authenticationRemoteDataSource.login(tUsername, tPassword);
      expect(result, isA<LoginResponse>());
    });

    test("should throw ServerException when the call is unsuccessful",
        () async {
      when(() => mockNetworkProvider.call(
              path: EndpointManager.login,
              method: RequestMethod.post,
              body: {
                "username": tUsername,
                "password": tPassword,
              })).thenAnswer((_) async {
        return Response(
            requestOptions: RequestOptions(path: EndpointManager.login),
            data: json.decode(fixture('login_response_failed.json')),
            statusCode: 400);
      });
      final call = authenticationRemoteDataSource.login;
      expect(() => call(tUsername, tPassword), throwsA(isA<ServerException>()));
    });
  });

  group("ResendOTP to user account", () {
    test("should return ResendOTP Response when the call is successful",
        () async {
      setUpMockResendOTPHttpManager();
      final result =
          await authenticationRemoteDataSource.resendOTP(userId: tUsername);
      expect(result, isA<BaseEntity>());
    });

    test("should throw ServerException when the call is unsuccessful",
        () async {
      when(() => mockNetworkProvider.call(
              path: EndpointManager.resendOTP,
              method: RequestMethod.post,
              body: {
                "username": tUsername,
              })).thenAnswer((_) async {
        return Response(
            requestOptions: RequestOptions(path: EndpointManager.resendOTP),
            data: json.decode(fixture('base_response_failed.json')),
            statusCode: 400);
      });
      final call = authenticationRemoteDataSource.resendOTP;
      expect(() => call(userId: tUsername), throwsA(isA<ServerException>()));
    });
  });

  group("Reset OTP to user account", () {
    test("should return ResendOTP Response when the call is successful",
        () async {
      setUpMockResetPasswordHttpManager();
      final result = await authenticationRemoteDataSource.resetPassword(
          username: tUsername);
      expect(result, isA<BaseEntity>());
    });

    test("should throw ServerException when the call is unsuccessful",
        () async {
      when(() => mockNetworkProvider.call(
              path: EndpointManager.resetPassword,
              method: RequestMethod.post,
              body: {
                "username": tUsername,
              })).thenAnswer((_) async {
        return Response(
            requestOptions: RequestOptions(path: EndpointManager.resetPassword),
            data: json.decode(fixture('base_response_failed.json')),
            statusCode: 400);
      });
      final call = authenticationRemoteDataSource.resetPassword;
      expect(() => call(username: tUsername), throwsA(isA<ServerException>()));
    });
  });

  group("ResendOTP to user account", () {
    test("should return ResendOTP Response when the call is successful",
        () async {
      setUpMockResendOTPHttpManager();
      final result =
          await authenticationRemoteDataSource.resendOTP(userId: tUsername);
      expect(result, isA<BaseEntity>());
    });

    test("should throw ServerException when the call is unsuccessful",
        () async {
      when(() => mockNetworkProvider.call(
              path: EndpointManager.resendOTP,
              method: RequestMethod.post,
              body: {
                "username": tUsername,
              })).thenAnswer((_) async {
        return Response(
            requestOptions: RequestOptions(path: EndpointManager.resendOTP),
            data: json.decode(fixture('base_response_failed.json')),
            statusCode: 400);
      });
      final call = authenticationRemoteDataSource.resendOTP;
      expect(() => call(userId: tUsername), throwsA(isA<ServerException>()));
    });
  });

  group("ResetCode to user account", () {
    test("should return ResendOTP Response when the call is successful",
        () async {
      setUpMockVerifyPasswordResetCodeHttpManager();
      final result =
          await authenticationRemoteDataSource.verifyPasswordResetCode(
        password: tPassword,
        username: tUsername,
        otpCode: tOtpCode,
      );
      expect(result, isA<BaseEntity>());
    });

    test("should throw ServerException when the call is unsuccessful",
        () async {
      when(() => mockNetworkProvider.call(
              path: EndpointManager.confirmReset,
              method: RequestMethod.post,
              body: {
                "username": tUsername,
                "password": tPassword,
                "otp_code": tOtpCode,
              })).thenAnswer((_) async {
        return Response(
            requestOptions: RequestOptions(path: EndpointManager.confirmReset),
            data: json.decode(fixture('base_response_failed.json')),
            statusCode: 400);
      });
      final call = authenticationRemoteDataSource.verifyPasswordResetCode;
      expect(
          () => call(
                password: tPassword,
                username: tUsername,
                otpCode: tOtpCode,
              ),
          throwsA(isA<ServerException>()));
    });
  });
}
