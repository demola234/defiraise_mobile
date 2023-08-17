import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/login_entity/login_response_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/login_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/login/states/bloc/login_state_bloc.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/signup/states/bloc/sign_up_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'login_bloc_test.mocks.dart';

@GenerateMocks([LoginUseCase])
void main() {
  late MockLoginUseCase mockLoginUseCase;
  late String tEmail;
  late String tPassword;
  late LoginResponse tResponse;
  late LoginStateBloc bloc;

  setUp(() {
    mockLoginUseCase = MockLoginUseCase();
    tPassword = "test";
    tEmail = "test@test.com";
    bloc = LoginStateBloc(loginUseCase: mockLoginUseCase);
    tResponse = const LoginResponse(
      data: Data(
        sessionId: "",
        accessToken: "",
        accessTokenExpiresAt: null,
        refreshToken: "",
        refreshTokenExpiresAt: null,
        user: UserResponse(
          username: "ademola1",
          email: "",
          passwordChangedAt: null,
          createdAt: null,
          address: "0x1C803Ba37C0494ecD088Fb878d687FAEb5a2EB5E",
          balance: "0.1",
        ),
      ),
      message: "success",
      status: 200,
    );
  });

  void setUpMockConverterToSuccess() =>
      when(mockLoginUseCase.call(any))
          .thenAnswer((_) async => Right(tResponse));
  test('initialState should be Empty', () async {
    //assert
    expect(bloc.state, LoginState.initial());
  });

  group('Create User Account', () {
    test('should get the user info after you create account', () async {
      // arrange
      setUpMockConverterToSuccess();

      // act
      bloc.add(LoginInUserEvent(user: tEmail, password: tPassword));

      // assert
      await untilCalled(mockLoginUseCase.call(any));
      verify(mockLoginUseCase
          .call(Params(password: tPassword, username: tEmail)));
    });

    test('should emit [Loading, Loaded] when data is gotten successfully',
        () async* {
      // arrange
      setUpMockConverterToSuccess();

      // assert later
      final expected = [
        SignUpState.loading(),
        SignUpState.createPasswordSuccess(tResponse.message),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));

      // act
       bloc.add(LoginInUserEvent(user: tEmail, password: tPassword));
    });

    test('should emit [Loading, Error] when getting data fails', () async* {
      // arrange
      when(mockLoginUseCase.call(any)).thenAnswer(
          (_) async => Left(ApiError(errorMessage: "error", errorCode: "400")));

      // assert later
      final expected = [
        SignUpState.loading(),
        SignUpState.createPasswordError(tResponse.message),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));

      // act
    bloc.add(LoginInUserEvent(user: tEmail, password: tPassword));
    });
  });
}
