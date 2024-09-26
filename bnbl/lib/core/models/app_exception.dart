// ignore_for_file: depend_on_referenced_packages, deprecated_member_use, avoid_print

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

class AppExceptions implements Exception {
  String? message;
  String? statusCode;

  AppExceptions({this.message, this.statusCode});

  factory AppExceptions.remote({String? message, String? statusCode}) =>
      AppExceptions(message: message);

  factory AppExceptions.storage({String? message}) =>
      AppExceptions(message: message);

  factory AppExceptions.notFound({String? message}) =>
      AppExceptions(message: message, statusCode: StatusCode.notFound.value);

  factory AppExceptions.internalServer({String? message}) => DataException(
      message: message, statusCode: StatusCode.internalServer.value);

  factory AppExceptions.business({String? message}) =>
      AppExceptions(message: message, statusCode: StatusCode.business.value);

  factory AppExceptions.firebase({String? message}) =>
      AppExceptions(message: message, statusCode: StatusCode.notFound.value);

  static AppExceptions getDioException(error) {
    AppExceptions networkExceptions;
    print("getDioException");
    print(error);
    print(error.response?.statusCode);
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.cancel:
          networkExceptions = NetworkException.requestCancelled();
          break;
        case DioExceptionType.connectionTimeout:
          networkExceptions = NetworkException.requestTimeout();
          break;
        case DioExceptionType.unknown:
          networkExceptions = NetworkException.noInternetConnection();
          break;
        case DioExceptionType.receiveTimeout:
          networkExceptions = NetworkException.sendTimeout();
          break;
        case DioExceptionType.badResponse:
          switch (error.response?.statusCode) {
            case 401:
              final Map<String, dynamic>? errorObject = error.response?.data;
              networkExceptions =
                  NetworkException.unauthorisedRequest(errorObject?["message"]);
              break;
            case 403:
              final Map<String, dynamic>? errorObject = error.response?.data;
              networkExceptions =
                  NetworkException.unauthorisedRequest(errorObject?["message"]);
              break;
            case 404:
              networkExceptions = NetworkException.notFound();
              break;
            case 409:
              networkExceptions = NetworkException.conflict();
              break;
            case 408:
              networkExceptions = NetworkException.requestTimeout();
              break;
            case 500:
              networkExceptions = NetworkException.internalServerError();
              break;
            case 503:
              networkExceptions = NetworkException.serviceUnavailable();
              break;
            case 400:
            case 422:
              final Map<String, dynamic>? errorObject = error.response?.data;
              if (errorObject?['errors'] != null) {
                return NetworkException.businessError(
                    (errorObject?['errors'] as Map?)?.values.join(", ") ?? "",
                    '');
              }
              if (errorObject?['message'] != null) {
                return NetworkException.businessError(
                    (errorObject?['message'] ) ?? "",
                    '');
              }
              else{
                return NetworkException.businessError(
                    (errorObject?['error'] as Map?)?.values.join(", ") ?? "",
                    '');
              }
            default:
              networkExceptions = NetworkException.defaultError();
          }
          break;
        case DioExceptionType.sendTimeout:
          networkExceptions = NetworkException.sendTimeout();
          break;
        case DioExceptionType.badCertificate:
          networkExceptions = NetworkException.badRequest();
          break;
        case DioExceptionType.connectionError:
          networkExceptions = NetworkException.noInternetConnection();
          break;
      }
    } else if (error is SocketException) {
      networkExceptions = NetworkException.noInternetConnection();
    } else {
      networkExceptions = NetworkException.unexpectedError();
    }
    return networkExceptions;
  }
}

enum StatusCode {
  notFound("404"),
  business("402"),
  internalServer("500");

  const StatusCode(this.value);

  final String value;
}

@freezed
class NetworkException extends AppExceptions with _$NetworkException {
  NetworkException._();

  factory NetworkException.requestCancelled() = _RequestCancelled;

  factory NetworkException.unauthorisedRequest(String? message) =
      _UnauthorisedRequest;

  factory NetworkException.badRequest() = _BadRequest;

  factory NetworkException.notFound() = _NotFound;

  factory NetworkException.methodNotAllowed() = _MethodNotAllowed;

  factory NetworkException.notAcceptable() = _NotAcceptable;

  factory NetworkException.requestTimeout() = _RequestTimeout;

  factory NetworkException.sendTimeout() = _SendTimeout;

  factory NetworkException.conflict() = _Conflict;

  factory NetworkException.internalServerError() = _InternalServerError;

  factory NetworkException.notImplemented() = _NotImplemented;

  factory NetworkException.serviceUnavailable() = _ServiceUnavailable;

  factory NetworkException.noInternetConnection() = _NoInternetConnection;

  factory NetworkException.formatException() = _FormatException;

  factory NetworkException.unableToProcess() = _UnableToProcess;

  factory NetworkException.defaultError() = _DefaultError;

  factory NetworkException.unexpectedError() = _UnexpectedError;

  factory NetworkException.businessError(String? error, String? code) =
      _BusinessError;
}

class DataException extends AppExceptions {
  DataException({super.message, super.statusCode});
}
