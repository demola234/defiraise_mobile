

// @GenerateMocks([Dio])
// @GenerateMocks([SecureStorage])
// @GenerateMocks([FlutterSecureStorage])
// void main() {
//   late NetworkProvider networkProvider;

//   late MockDio mockDio;
//   late MockSecureStorage mockSecureStorage;
//   late MockFlutterSecureStorage mockFlutterSecureStorage;
//   late Response tResponse;
//   late String? token;
//   final getIt = GetIt.instance;

//   void setupDependencyInjection() {
//     GetIt.instance.registerSingleton<SecureStorage>(ISecureStorage(
//       MockFlutterSecureStorage(),
//     ));
//   }

//   setUp(() async {
//     setupDependencyInjection();
//     mockDio = MockDio();
//     networkProvider = NetworkProviderImpl();
//     mockSecureStorage = MockSecureStorage();
//   });

//   group("Test Get Call", () {
//     const tPath = "https://google.com";
//     test("should return a response", () async {
//       // arrange
//       tResponse = Response(
//         requestOptions: RequestOptions(
//           path: tPath,
//         ),
//         data: {"data": "data"},
//         statusCode: 200,
//         statusMessage: "OK",
//       );
//       when(mockDio.get(any)).thenAnswer((_) async => tResponse);


//       // act
//       final result = await networkProvider.call(
//         path: tPath,
//         method: RequestMethod.get,
//         options: Options(headers: {
//           'Authorization': 'Bearer $mockAccessToken',
//         }),
//       );
//       if (result!.statusCode == 200) {
//         result.data = tResponse.data;
//       }

//       // assert
//       expect(result.data, tResponse.data);
//     });

//     test("should return a different tResponse From the Dio Response", () async {
//       // arrange
//       tResponse = Response(
//         requestOptions: RequestOptions(path: tPath),
//         data: {"data": "data"},
//         statusCode: 200,
//         statusMessage: "OK",
//       );
//       when(mockDio.get(any)).thenAnswer((_) async => tResponse);

//       // act
//       final result =
//           await networkProvider.call(path: tPath, method: RequestMethod.get);

//       // assert
//       expect(result!.data, isNot(tResponse.data));
//     });
//   });
// }
