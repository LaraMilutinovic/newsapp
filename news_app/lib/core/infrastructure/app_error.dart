import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

enum AppErrorType {
  network,
  badRequest,
  unauthorized,
  cancel,
  timeout,
  server,
  unknown,
  userNotConfirmed,
}

class AppError {
  late String message;
  late AppErrorType type;
  String? recoverySuggestion;
  String? underlyingException;
  int statusCode = 0;

  AppError(Exception e);


  void dio(DioError error) {
    debugPrint(
      'AppError(DioError): '
      'type is ${error.type}, message is ${error.message}',
    );

    message = error.message;

    switch (error.type) {
      case DioErrorType.other:
        if (error.error is SocketException) {
          // SocketException: Failed host lookup: '***'
          // (OS Error: No address associated with hostname, errno = 7)
          type = AppErrorType.network;
        } else {
          type = AppErrorType.unknown;
        }
        break;
      case DioErrorType.connectTimeout:
      case DioErrorType.receiveTimeout:
        type = AppErrorType.timeout;
        break;
      case DioErrorType.sendTimeout:
        type = AppErrorType.network;
        break;
      case DioErrorType.response:
        // TODO(api): need define more http status;
        switch (error.response?.statusCode) {
          case HttpStatus.badRequest: // 400
            type = AppErrorType.badRequest;
            break;
          case HttpStatus.unauthorized: // 401
            type = AppErrorType.unauthorized;
            break;
          case HttpStatus.internalServerError: // 500
          case HttpStatus.badGateway: // 502
          case HttpStatus.serviceUnavailable: // 503
          case HttpStatus.gatewayTimeout: // 504
            type = AppErrorType.server;
            break;
          default:
            type = AppErrorType.unknown;
            break;
        }
        break;
      case DioErrorType.cancel:
        type = AppErrorType.cancel;
        break;
      default:
        type = AppErrorType.unknown;
    }
  }


  AppErrorType parseErrorType(int statusCode) {
    switch (statusCode) {
      case HttpStatus.badRequest: // 400
        return AppErrorType.badRequest;
      case HttpStatus.unauthorized: // 401
        return AppErrorType.unauthorized;
      case HttpStatus.internalServerError: // 500
      case HttpStatus.badGateway: // 502
      case HttpStatus.serviceUnavailable: // 503
      case HttpStatus.gatewayTimeout: // 504
        return AppErrorType.server;
      default:
        return AppErrorType.unknown;
    }
  }
}
