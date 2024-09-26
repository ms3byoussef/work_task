import 'package:bnbl/environments/staging/staging_environment.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// Alice alice = Alice();

@Environment(Environment.dev)
@module
abstract class StagingAppModule {
  @LazySingleton(env: [Environment.dev])
  @LazySingleton(env: [Environment.dev])
  Dio dioStaging(StagingEnvironment environment) {
    final dio = Dio(
      BaseOptions(
        baseUrl: environment.devBaseUrl,
      ),
    );

    // dio.interceptors.add(alice.getDioInterceptor());

    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
      enabled: kDebugMode,
    ));

    // dio.interceptors.add(RefreshTokenInterceptor());
    // dio.interceptors.add(TokenInterceptors());
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: ((e, handler) async {
          if ((e.response?.statusCode == 401 &&
                  (!e.requestOptions.path.contains("login")) ||
              e.requestOptions.path.contains("logout"))) {
            return;
          }
          return handler.reject(
            DioException(
              requestOptions: e.requestOptions,
              type: DioExceptionType.badResponse,
              response: e.response,
            ),
          );
        }),
      ),
    );

    return dio;
  }

  // @LazySingleton(env: [Environment.dev])
  // AbstractRemoteFileManager remoteFileManager(Dio dio) {
  //   return DioClientFileManager(dio);
  // }
}
