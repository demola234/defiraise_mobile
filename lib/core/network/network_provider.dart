// ignore_for_file: strict_raw_type

// 📦 Package imports:
import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
// 🌎 Project imports:
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class NetworkProvider {
  Future<Response?> call({
    required String path,
    required RequestMethod method,
    dynamic body = const {},
    Options? options,
    Map<String, dynamic> queryParams = const {},
  });

  Future<Response?> upload({
    required String path,
    dynamic body = const {},
  });
}

class NetworkProviderImpl extends NetworkProvider {
  // Info userDetails = sl<AppStorage>().getUserDetails();

  Dio _getDioInstance() {
    var dio = Dio(
      BaseOptions(
        connectTimeout: 100000,
        receiveTimeout: 100000,
        receiveDataWhenStatusError: true,
        headers: {
          // 'Authorization': 'Bearer ${userDetails.token}',
        },
      ),
    );

    //Pretty Dio logger is a Dio interceptor that logs network calls in a pretty, easy to read format.
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );

    dio.interceptors.add(CurlLoggerDioInterceptor(printOnSuccess: true));

    return dio;
  }

  @override
  Future<Response?> call({
    required String path,
    required RequestMethod method,
    dynamic body = const {},
    Options? options,
    Map<String, dynamic> queryParams = const {},
  }) async {
    Response? response;
    try {
      switch (method) {
        case RequestMethod.get:
          response = await _getDioInstance()
              .get(path, queryParameters: queryParams, options: options);
          break;
        case RequestMethod.post:
          response = await _getDioInstance().post(path,
              data: body, queryParameters: queryParams, options: options);
          break;
        case RequestMethod.patch:
          response = await _getDioInstance().patch(path,
              data: body, queryParameters: queryParams, options: options);
          break;
        case RequestMethod.put:
          response = await _getDioInstance().put(path,
              data: body, queryParameters: queryParams, options: options);
          break;
        case RequestMethod.delete:
          response = await _getDioInstance().delete(path,
              data: body, queryParameters: queryParams, options: options);
          break;
      }

      return response;
    } catch (e) {
      return Future.error(ApiError.fromDioError(e));
    }
  }

  @override
  Future<Response?> upload({
    required String path,
    dynamic body = const {},
  }) async {
    Response? response;

    try {
      // if (userDetails.token.isNotEmpty) {
      _getDioInstance().options.headers.addAll(
        {
          // 'Authorization': 'Bearer ${userDetails.token}',
          'Accept': '*/**',
          'Accept-Encoding': 'gzip, deflate, br',
          'Connection': 'keep-alive',
          'Content-Type': 'application/form-data'
        },
      );
      // }
      response = await _getDioInstance().post(path, data: body);
    } catch (e) {
      return Future.error(ApiError.fromDioError(e));
    }

    return response;
  }
}

enum RequestMethod { get, post, put, patch, delete }
