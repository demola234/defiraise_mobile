import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/login_entity/login_response_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/get_user_details_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/login/states/get_user_details/bloc/get_user_details_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_user_details_bloc_test.mocks.dart';

@GenerateMocks([GetUserDetailsUsecase])
void main() {
  late MockGetUserDetailsUsecase mockGetUserDetailsUsecase;
  late UserResponse tResponse;
  late GetUserDetailsBloc bloc;

  setUp(() {
    mockGetUserDetailsUsecase = MockGetUserDetailsUsecase();
    bloc = GetUserDetailsBloc(getUserDetailsUsecase: mockGetUserDetailsUsecase);
    tResponse = const UserResponse(
      username: "ademola1",
      email: "",
      passwordChangedAt: null,
      createdAt: null,
      address: "0x1C803Ba37C0494ecD088Fb878d687FAEb5a2EB5E",
      balance: "0.1",
    );
  });

  void setUpMockConverterToSuccess() =>
      when(mockGetUserDetailsUsecase.call(any))
          .thenAnswer((_) async => Right(tResponse));
  test('initialState should be Empty', () async {
    //assert
    expect(bloc.state, GetUserDetailsState.initial());
  });

  group('Create User Account', () {
    test('should get the user info after you create account', () async {
      // arrange
      setUpMockConverterToSuccess();

      // act
      bloc.add(GetUserEventEq());

      // assert
      await untilCalled(mockGetUserDetailsUsecase.call(any));
      verify(mockGetUserDetailsUsecase.call(NoParams()));
    });

    test('should emit [Loading, Loaded] when data is gotten successfully',
        () async* {
      // arrange
      setUpMockConverterToSuccess();

      // assert later
      final expected = [
        GetUserDetailsState.loading(),
        GetUserDetailsState.loadDetails(tResponse),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));

      // act
      bloc.add(GetUserEventEq());
    });

    test('should emit [Loading, Error] when getting data fails', () async* {
      // arrange
      when(mockGetUserDetailsUsecase.call(any)).thenAnswer(
          (_) async => Left(ApiError(errorMessage: "error", errorCode: "400")));

      // assert later
      final expected = [
        GetUserDetailsState.loading(),
        GetUserDetailsState.loadDetails(tResponse),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));

      // act
      bloc.add(GetUserEventEq());
    });
  });
}
