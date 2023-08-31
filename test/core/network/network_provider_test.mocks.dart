// Mocks generated by Mockito 5.4.2 from annotations
// in defiraiser_mobile/test/core/network/network_provider_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i9;

import 'package:defiraiser_mobile/core/secure/secure.dart' as _i11;
import 'package:defiraiser_mobile/features/authentication/domain/entities/last_user_cache_details/last_user_cache_details.dart'
    as _i12;
import 'package:dio/src/adapter.dart' as _i3;
import 'package:dio/src/cancel_token.dart' as _i10;
import 'package:dio/src/dio.dart' as _i8;
import 'package:dio/src/dio_mixin.dart' as _i5;
import 'package:dio/src/options.dart' as _i2;
import 'package:dio/src/response.dart' as _i6;
import 'package:dio/src/transformer.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i7;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeBaseOptions_0 extends _i1.SmartFake implements _i2.BaseOptions {
  _FakeBaseOptions_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeHttpClientAdapter_1 extends _i1.SmartFake
    implements _i3.HttpClientAdapter {
  _FakeHttpClientAdapter_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTransformer_2 extends _i1.SmartFake implements _i4.Transformer {
  _FakeTransformer_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeInterceptors_3 extends _i1.SmartFake implements _i5.Interceptors {
  _FakeInterceptors_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_4<T1> extends _i1.SmartFake implements _i6.Response<T1> {
  _FakeResponse_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeIOSOptions_5 extends _i1.SmartFake implements _i7.IOSOptions {
  _FakeIOSOptions_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAndroidOptions_6 extends _i1.SmartFake
    implements _i7.AndroidOptions {
  _FakeAndroidOptions_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLinuxOptions_7 extends _i1.SmartFake implements _i7.LinuxOptions {
  _FakeLinuxOptions_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWindowsOptions_8 extends _i1.SmartFake
    implements _i7.WindowsOptions {
  _FakeWindowsOptions_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWebOptions_9 extends _i1.SmartFake implements _i7.WebOptions {
  _FakeWebOptions_9(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMacOsOptions_10 extends _i1.SmartFake implements _i7.MacOsOptions {
  _FakeMacOsOptions_10(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Dio].
///
/// See the documentation for Mockito's code generation for more information.
class MockDio extends _i1.Mock implements _i8.Dio {
  MockDio() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.BaseOptions get options => (super.noSuchMethod(
        Invocation.getter(#options),
        returnValue: _FakeBaseOptions_0(
          this,
          Invocation.getter(#options),
        ),
      ) as _i2.BaseOptions);
  @override
  set options(_i2.BaseOptions? _options) => super.noSuchMethod(
        Invocation.setter(
          #options,
          _options,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i3.HttpClientAdapter get httpClientAdapter => (super.noSuchMethod(
        Invocation.getter(#httpClientAdapter),
        returnValue: _FakeHttpClientAdapter_1(
          this,
          Invocation.getter(#httpClientAdapter),
        ),
      ) as _i3.HttpClientAdapter);
  @override
  set httpClientAdapter(_i3.HttpClientAdapter? _httpClientAdapter) =>
      super.noSuchMethod(
        Invocation.setter(
          #httpClientAdapter,
          _httpClientAdapter,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Transformer get transformer => (super.noSuchMethod(
        Invocation.getter(#transformer),
        returnValue: _FakeTransformer_2(
          this,
          Invocation.getter(#transformer),
        ),
      ) as _i4.Transformer);
  @override
  set transformer(_i4.Transformer? _transformer) => super.noSuchMethod(
        Invocation.setter(
          #transformer,
          _transformer,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Interceptors get interceptors => (super.noSuchMethod(
        Invocation.getter(#interceptors),
        returnValue: _FakeInterceptors_3(
          this,
          Invocation.getter(#interceptors),
        ),
      ) as _i5.Interceptors);
  @override
  void close({bool? force = false}) => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
          {#force: force},
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i9.Future<_i6.Response<T>> get<T>(
    String? path, {
    Map<String, dynamic>? queryParameters,
    _i2.Options? options,
    _i10.CancelToken? cancelToken,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [path],
          {
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #get,
            [path],
            {
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i6.Response<T>>);
  @override
  _i9.Future<_i6.Response<T>> getUri<T>(
    Uri? uri, {
    _i2.Options? options,
    _i10.CancelToken? cancelToken,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUri,
          [uri],
          {
            #options: options,
            #cancelToken: cancelToken,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #getUri,
            [uri],
            {
              #options: options,
              #cancelToken: cancelToken,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i6.Response<T>>);
  @override
  _i9.Future<_i6.Response<T>> post<T>(
    String? path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    _i2.Options? options,
    _i10.CancelToken? cancelToken,
    _i2.ProgressCallback? onSendProgress,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #post,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i6.Response<T>>);
  @override
  _i9.Future<_i6.Response<T>> postUri<T>(
    Uri? uri, {
    dynamic data,
    _i2.Options? options,
    _i10.CancelToken? cancelToken,
    _i2.ProgressCallback? onSendProgress,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #postUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #postUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i6.Response<T>>);
  @override
  _i9.Future<_i6.Response<T>> put<T>(
    String? path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    _i2.Options? options,
    _i10.CancelToken? cancelToken,
    _i2.ProgressCallback? onSendProgress,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #put,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i6.Response<T>>);
  @override
  _i9.Future<_i6.Response<T>> putUri<T>(
    Uri? uri, {
    dynamic data,
    _i2.Options? options,
    _i10.CancelToken? cancelToken,
    _i2.ProgressCallback? onSendProgress,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #putUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #putUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i6.Response<T>>);
  @override
  _i9.Future<_i6.Response<T>> head<T>(
    String? path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    _i2.Options? options,
    _i10.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #head,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i9.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #head,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i9.Future<_i6.Response<T>>);
  @override
  _i9.Future<_i6.Response<T>> headUri<T>(
    Uri? uri, {
    dynamic data,
    _i2.Options? options,
    _i10.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #headUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i9.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #headUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i9.Future<_i6.Response<T>>);
  @override
  _i9.Future<_i6.Response<T>> delete<T>(
    String? path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    _i2.Options? options,
    _i10.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i9.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #delete,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i9.Future<_i6.Response<T>>);
  @override
  _i9.Future<_i6.Response<T>> deleteUri<T>(
    Uri? uri, {
    dynamic data,
    _i2.Options? options,
    _i10.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i9.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #deleteUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i9.Future<_i6.Response<T>>);
  @override
  _i9.Future<_i6.Response<T>> patch<T>(
    String? path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    _i2.Options? options,
    _i10.CancelToken? cancelToken,
    _i2.ProgressCallback? onSendProgress,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #patch,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i6.Response<T>>);
  @override
  _i9.Future<_i6.Response<T>> patchUri<T>(
    Uri? uri, {
    dynamic data,
    _i2.Options? options,
    _i10.CancelToken? cancelToken,
    _i2.ProgressCallback? onSendProgress,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patchUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #patchUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i6.Response<T>>);
  @override
  void lock() => super.noSuchMethod(
        Invocation.method(
          #lock,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void unlock() => super.noSuchMethod(
        Invocation.method(
          #unlock,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void clear() => super.noSuchMethod(
        Invocation.method(
          #clear,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i9.Future<_i6.Response<dynamic>> download(
    String? urlPath,
    dynamic savePath, {
    _i2.ProgressCallback? onReceiveProgress,
    Map<String, dynamic>? queryParameters,
    _i10.CancelToken? cancelToken,
    bool? deleteOnError = true,
    String? lengthHeader = r'content-length',
    dynamic data,
    _i2.Options? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #download,
          [
            urlPath,
            savePath,
          ],
          {
            #onReceiveProgress: onReceiveProgress,
            #queryParameters: queryParameters,
            #cancelToken: cancelToken,
            #deleteOnError: deleteOnError,
            #lengthHeader: lengthHeader,
            #data: data,
            #options: options,
          },
        ),
        returnValue:
            _i9.Future<_i6.Response<dynamic>>.value(_FakeResponse_4<dynamic>(
          this,
          Invocation.method(
            #download,
            [
              urlPath,
              savePath,
            ],
            {
              #onReceiveProgress: onReceiveProgress,
              #queryParameters: queryParameters,
              #cancelToken: cancelToken,
              #deleteOnError: deleteOnError,
              #lengthHeader: lengthHeader,
              #data: data,
              #options: options,
            },
          ),
        )),
      ) as _i9.Future<_i6.Response<dynamic>>);
  @override
  _i9.Future<_i6.Response<dynamic>> downloadUri(
    Uri? uri,
    dynamic savePath, {
    _i2.ProgressCallback? onReceiveProgress,
    _i10.CancelToken? cancelToken,
    bool? deleteOnError = true,
    String? lengthHeader = r'content-length',
    dynamic data,
    _i2.Options? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #downloadUri,
          [
            uri,
            savePath,
          ],
          {
            #onReceiveProgress: onReceiveProgress,
            #cancelToken: cancelToken,
            #deleteOnError: deleteOnError,
            #lengthHeader: lengthHeader,
            #data: data,
            #options: options,
          },
        ),
        returnValue:
            _i9.Future<_i6.Response<dynamic>>.value(_FakeResponse_4<dynamic>(
          this,
          Invocation.method(
            #downloadUri,
            [
              uri,
              savePath,
            ],
            {
              #onReceiveProgress: onReceiveProgress,
              #cancelToken: cancelToken,
              #deleteOnError: deleteOnError,
              #lengthHeader: lengthHeader,
              #data: data,
              #options: options,
            },
          ),
        )),
      ) as _i9.Future<_i6.Response<dynamic>>);
  @override
  _i9.Future<_i6.Response<T>> request<T>(
    String? path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    _i10.CancelToken? cancelToken,
    _i2.Options? options,
    _i2.ProgressCallback? onSendProgress,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #request,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #cancelToken: cancelToken,
            #options: options,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #request,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #cancelToken: cancelToken,
              #options: options,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i6.Response<T>>);
  @override
  _i9.Future<_i6.Response<T>> requestUri<T>(
    Uri? uri, {
    dynamic data,
    _i10.CancelToken? cancelToken,
    _i2.Options? options,
    _i2.ProgressCallback? onSendProgress,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #requestUri,
          [uri],
          {
            #data: data,
            #cancelToken: cancelToken,
            #options: options,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i9.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #requestUri,
            [uri],
            {
              #data: data,
              #cancelToken: cancelToken,
              #options: options,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i9.Future<_i6.Response<T>>);
  @override
  _i9.Future<_i6.Response<T>> fetch<T>(_i2.RequestOptions? requestOptions) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetch,
          [requestOptions],
        ),
        returnValue: _i9.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #fetch,
            [requestOptions],
          ),
        )),
      ) as _i9.Future<_i6.Response<T>>);
}

/// A class which mocks [SecureStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockSecureStorage extends _i1.Mock implements _i11.SecureStorage {
  MockSecureStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<void> setHiveKey(
    String? value,
    String? hiveKey,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setHiveKey,
          [
            value,
            hiveKey,
          ],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);
  @override
  _i9.Future<String?> getHiveKey(String? hiveKey) => (super.noSuchMethod(
        Invocation.method(
          #getHiveKey,
          [hiveKey],
        ),
        returnValue: _i9.Future<String?>.value(),
      ) as _i9.Future<String?>);
  @override
  _i9.Future<void> saveAuth(
    _i12.LastUserCachedDetails? value,
    String? hiveKey,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveAuth,
          [
            value,
            hiveKey,
          ],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);
  @override
  dynamic clearAuthCredentials(String? hiveKey) =>
      super.noSuchMethod(Invocation.method(
        #clearAuthCredentials,
        [hiveKey],
      ));
  @override
  _i9.Future<void> saveAccessToken(
    String? value,
    String? hiveKey,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveAccessToken,
          [
            value,
            hiveKey,
          ],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);
  @override
  _i9.Future<String?> getAccessToken(String? hiveKey) => (super.noSuchMethod(
        Invocation.method(
          #getAccessToken,
          [hiveKey],
        ),
        returnValue: _i9.Future<String?>.value(),
      ) as _i9.Future<String?>);
  @override
  _i9.Future<_i12.LastUserCachedDetails?> getAuthCredentials(String? hiveKey) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAuthCredentials,
          [hiveKey],
        ),
        returnValue: _i9.Future<_i12.LastUserCachedDetails?>.value(),
      ) as _i9.Future<_i12.LastUserCachedDetails?>);
  @override
  dynamic clearAccessToken(String? hiveKey) =>
      super.noSuchMethod(Invocation.method(
        #clearAccessToken,
        [hiveKey],
      ));
}

/// A class which mocks [FlutterSecureStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockFlutterSecureStorage extends _i1.Mock
    implements _i7.FlutterSecureStorage {
  MockFlutterSecureStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.IOSOptions get iOptions => (super.noSuchMethod(
        Invocation.getter(#iOptions),
        returnValue: _FakeIOSOptions_5(
          this,
          Invocation.getter(#iOptions),
        ),
      ) as _i7.IOSOptions);
  @override
  _i7.AndroidOptions get aOptions => (super.noSuchMethod(
        Invocation.getter(#aOptions),
        returnValue: _FakeAndroidOptions_6(
          this,
          Invocation.getter(#aOptions),
        ),
      ) as _i7.AndroidOptions);
  @override
  _i7.LinuxOptions get lOptions => (super.noSuchMethod(
        Invocation.getter(#lOptions),
        returnValue: _FakeLinuxOptions_7(
          this,
          Invocation.getter(#lOptions),
        ),
      ) as _i7.LinuxOptions);
  @override
  _i7.WindowsOptions get wOptions => (super.noSuchMethod(
        Invocation.getter(#wOptions),
        returnValue: _FakeWindowsOptions_8(
          this,
          Invocation.getter(#wOptions),
        ),
      ) as _i7.WindowsOptions);
  @override
  _i7.WebOptions get webOptions => (super.noSuchMethod(
        Invocation.getter(#webOptions),
        returnValue: _FakeWebOptions_9(
          this,
          Invocation.getter(#webOptions),
        ),
      ) as _i7.WebOptions);
  @override
  _i7.MacOsOptions get mOptions => (super.noSuchMethod(
        Invocation.getter(#mOptions),
        returnValue: _FakeMacOsOptions_10(
          this,
          Invocation.getter(#mOptions),
        ),
      ) as _i7.MacOsOptions);
  @override
  _i9.Future<void> write({
    required String? key,
    required String? value,
    _i7.IOSOptions? iOptions,
    _i7.AndroidOptions? aOptions,
    _i7.LinuxOptions? lOptions,
    _i7.WebOptions? webOptions,
    _i7.MacOsOptions? mOptions,
    _i7.WindowsOptions? wOptions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #write,
          [],
          {
            #key: key,
            #value: value,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions,
          },
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);
  @override
  _i9.Future<String?> read({
    required String? key,
    _i7.IOSOptions? iOptions,
    _i7.AndroidOptions? aOptions,
    _i7.LinuxOptions? lOptions,
    _i7.WebOptions? webOptions,
    _i7.MacOsOptions? mOptions,
    _i7.WindowsOptions? wOptions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #read,
          [],
          {
            #key: key,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions,
          },
        ),
        returnValue: _i9.Future<String?>.value(),
      ) as _i9.Future<String?>);
  @override
  _i9.Future<bool> containsKey({
    required String? key,
    _i7.IOSOptions? iOptions,
    _i7.AndroidOptions? aOptions,
    _i7.LinuxOptions? lOptions,
    _i7.WebOptions? webOptions,
    _i7.MacOsOptions? mOptions,
    _i7.WindowsOptions? wOptions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #containsKey,
          [],
          {
            #key: key,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions,
          },
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);
  @override
  _i9.Future<void> delete({
    required String? key,
    _i7.IOSOptions? iOptions,
    _i7.AndroidOptions? aOptions,
    _i7.LinuxOptions? lOptions,
    _i7.WebOptions? webOptions,
    _i7.MacOsOptions? mOptions,
    _i7.WindowsOptions? wOptions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [],
          {
            #key: key,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions,
          },
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);
  @override
  _i9.Future<Map<String, String>> readAll({
    _i7.IOSOptions? iOptions,
    _i7.AndroidOptions? aOptions,
    _i7.LinuxOptions? lOptions,
    _i7.WebOptions? webOptions,
    _i7.MacOsOptions? mOptions,
    _i7.WindowsOptions? wOptions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #readAll,
          [],
          {
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions,
          },
        ),
        returnValue: _i9.Future<Map<String, String>>.value(<String, String>{}),
      ) as _i9.Future<Map<String, String>>);
  @override
  _i9.Future<void> deleteAll({
    _i7.IOSOptions? iOptions,
    _i7.AndroidOptions? aOptions,
    _i7.LinuxOptions? lOptions,
    _i7.WebOptions? webOptions,
    _i7.MacOsOptions? mOptions,
    _i7.WindowsOptions? wOptions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteAll,
          [],
          {
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions,
          },
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);
}
