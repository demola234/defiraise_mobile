import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/create_user_password_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/signup/states/create_password_bloc/bloc/create_password_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'create_password_bloc_test.mocks.dart';

@GenerateMocks([CreateUserPasswordUsecase])
void main() {
  late MockCreateUserPasswordUsecase mockCreateUserPasswordUsecase;

  late CreatePasswordBloc bloc;
  late BaseEntity tBaseResponse;
  late String tUsername;
  late String tPassword;
  late bool tBiometrics;
  late String tMessage;

  setUp(() {
    mockCreateUserPasswordUsecase = MockCreateUserPasswordUsecase();
    bloc = CreatePasswordBloc(
      createUserPasswordUsecase: mockCreateUserPasswordUsecase,
    );
  });

  tBaseResponse = const BaseEntity(
    message: "success",
    data: "Passed",
    status: 200,
  );

  tUsername = "test";
  tPassword = "test";
  tBiometrics = true;
  tMessage = "success";

  void setUpMockConverterToSuccess() =>
      when(mockCreateUserPasswordUsecase.call(any))
          .thenAnswer((_) async => Right(tBaseResponse));

  test('initialState should be Empty', () async {
    //assert
    expect(bloc.state, CreatePasswordState.initial());
  });

  group("should create password", () {
    test('should get the user info after you create account', () async {
      // arrange
      setUpMockConverterToSuccess();

      // act
      bloc.add(CreatePasswordEq(
          password: tPassword, username: tUsername, biometrics: tBiometrics));

      // assert
      await untilCalled(mockCreateUserPasswordUsecase.call(any));
      verify(mockCreateUserPasswordUsecase.call(CreatePasswordParams(
          password: tPassword, username: tUsername, biometrics: tBiometrics)));
    });

    test(
        'should emit [Loading, Loaded] when data is gotten successfully from the server',
        () async {
      // arrange
      setUpMockConverterToSuccess();

      // assert later
      final expected = [
        CreatePasswordState.creatingPassword(),
        CreatePasswordState.createPasswordSuccess(tMessage),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));

      // act
      bloc.add(CreatePasswordEq(
          password: tPassword, username: tUsername, biometrics: tBiometrics));
    });

    test('should emit [Loading, Error] when getting data fails from the server',
        () async* {
      // arrange
      when(mockCreateUserPasswordUsecase.call(any)).thenAnswer(
          (_) async => Left(ApiError(errorMessage: "error", errorCode: "400")));

      // assert later
      final expected = [
        CreatePasswordState.creatingPassword(),
        CreatePasswordState.createPasswordError(tBaseResponse.message),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));

      // act
      bloc.add(CreatePasswordEq(
          password: tPassword, username: tUsername, biometrics: tBiometrics));
    });
  });
}
