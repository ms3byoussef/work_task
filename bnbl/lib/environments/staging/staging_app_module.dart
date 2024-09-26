import 'package:bnbl/core/remote_files/abstract_remote_file_manager.dart';
import 'package:bnbl/core/remote_files/remote_file_manager.dart';
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
  Dio dioStaging(StagingEnvironment environment) {
    final dio = Dio(
      BaseOptions(
        baseUrl: environment.devBaseUrl,
        headers: {
          'Content-Type': 'application/json',
        },
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

    // Interceptor to add partner_token to every request
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      // options.headers['Authorization'] = 'Bearer $partnerToken';
      options.headers['partner_token'] = "";
      options.headers['language'] = 'en';
      return handler.next(options);
    }));
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

  @LazySingleton(env: [Environment.dev])
  AbstractRemoteFileManager remoteFileManager(Dio dio) {
    return DioClientFileManager(dio);
  }
}
