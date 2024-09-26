import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../production/production_environment.dart';

@Environment(Environment.prod)
@module
abstract class ProductionAppModule {
  @LazySingleton(env: [Environment.prod])
  // FlutterSecureStorage get securedStorage => const FlutterSecureStorage();

  @LazySingleton(env: [Environment.prod])
  Dio dioProduction(ProductionEnvironment productionEnvironment) {
    final dio = Dio(
      BaseOptions(
        baseUrl: productionEnvironment.productionUrl,
      ),
    );
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      // options.headers['Authorization'] = 'Bearer $partnerToken';
      options.headers['partner_token'] = "";
      options.headers['language'] = 'en';
      return handler.next(options);
    }));
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: ((e, handler) async {
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
}
