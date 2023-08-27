import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/login_entity/login_response_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/set_profile_avatar_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/login/states/set_profile_avatar/bloc/set_profile_avatar_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'set_profile_avatar_bloc_test.mocks.dart';

@GenerateMocks([ProfileAvatarUsecase])
void main() {
  late MockProfileAvatarUsecase mockProfileAvatarUsecase;
  late UserResponse tResponse;
  late SetProfileAvatarBloc bloc;
  late String tMessage;
  late int tImageId;

  setUp(() {
    mockProfileAvatarUsecase = MockProfileAvatarUsecase();
    bloc = SetProfileAvatarBloc(profileAvatarUsecase: mockProfileAvatarUsecase);
    tResponse = const UserResponse(
      username: "ademola1",
      email: "",
      passwordChangedAt: null,
      createdAt: null,
      address: "0x1C803Ba37C0494ecD088Fb878d687FAEb5a2EB5E",
      balance: "0.1",
    );
    tImageId = 1;
    tMessage = "Error";
  });

  void setUpMockConverterToSuccess() => when(mockProfileAvatarUsecase.call(any))
      .thenAnswer((_) async => Right(tResponse));
  test('initialState should be Empty', () async {
    //assert
    expect(bloc.state, SetProfileAvatarState.initial());
  });

  group('Create User Account', () {
    test('should get the user info after you create account', () async {
      // arrange
      setUpMockConverterToSuccess();

      // act
      bloc.add(SetProfileAvatarEq(imageId: tImageId));

      // assert
      await untilCalled(mockProfileAvatarUsecase.call(any));
      verify(mockProfileAvatarUsecase
          .call((SetProfileAvatarParams(imageId: tImageId))));
    });

    test('should emit [Loading, Loaded] when data is gotten successfully',
        () async* {
      // arrange
      setUpMockConverterToSuccess();

      // assert later
      final expected = [
        SetProfileAvatarState.loading(),
        SetProfileAvatarState.profileSet(tResponse.avatar),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));

      // act
      bloc.add(SetProfileAvatarEq(imageId: tImageId));
    });

    test('should emit [Loading, Error] when getting data fails', () async* {
      // arrange
      when(mockProfileAvatarUsecase.call(any)).thenAnswer(
          (_) async => Left(ApiError(errorMessage: "error", errorCode: "400")));

      // assert later
      final expected = [
        SetProfileAvatarState.loading(),
        SetProfileAvatarState.profileError(tMessage),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));

      // act
      bloc.add(SetProfileAvatarEq(imageId: tImageId));
    });
  });
}
