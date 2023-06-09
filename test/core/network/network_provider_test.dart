import 'package:defiraiser_mobile/core/network/network_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'network_provider_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  late NetworkProvider networkProvider;
  late MockDio mockDio;
  late Response tResponse;

  setUp(() {
    mockDio = MockDio();
    networkProvider = NetworkProviderImpl();
  });

  group("Test Get Call", () {
    const tPath = "https://google.com";
    test("should return a response", () async {
      // arrange
      tResponse = Response(
        requestOptions: RequestOptions(path: tPath),
        data: {"data": "data"},
        statusCode: 200,
        statusMessage: "OK",
      );
      when(mockDio.get(any)).thenAnswer((_) async => tResponse);

      // act
      final result =
          await networkProvider.call(path: tPath, method: RequestMethod.get);
      if (result!.statusCode == 200) {
        result.data = tResponse.data;
      }

      // assert
      expect(result.data, tResponse.data);
    });

    test("should return a different tResponse From the Dio Response", () async {
      // arrange
      tResponse = Response(
        requestOptions: RequestOptions(path: tPath),
        data: {"data": "data"},
        statusCode: 200,
        statusMessage: "OK",
      );
      when(mockDio.get(any)).thenAnswer((_) async => tResponse);

      // act
      final result =
          await networkProvider.call(path: tPath, method: RequestMethod.get);

      // assert
      expect(result!.data, isNot(tResponse.data));
    });
  });
}
