// // ignore_for_file: empty_catches

// import 'package:dio/dio.dart';
// import 'package:tangle/core/helpers/secured_storage_handler.dart';

// class TokenInterceptors extends Interceptor {
//   @override
//   onRequest(
//     RequestOptions options,
//     RequestInterceptorHandler handler,
//   ) async {
//     Map<String, dynamic> header = {};

//     var token = await getToken();
//     if (token != null) {
//       header.addAll({"Authorization": 'Bearer $token'});
//     }
//     options.headers.addAll(header);
//     handler.next(options);
//   }
// }

// Future<String?> getToken() async {
//   try {
//     var token = await SecuredStorageHandler.fromGlobalKey(
//             storedKey: GlobalSecuredStorageKeys.token)
//         .resolveAsString();
//     return token;
//   } catch (e) {}
//   return null;
// }

// Future<String?> getRefreshToken() async {
//   try {
//     var refreshToken = await SecuredStorageHandler.fromGlobalKey(
//             storedKey: GlobalSecuredStorageKeys.refreshToken)
//         .resolveAsString();
//     return refreshToken;
//   } catch (e) {}
//   return null;
// }
