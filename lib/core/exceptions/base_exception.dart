import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';

import 'no_connection_with_server_exception.dart';

class BaseException implements Exception, DioError {
  String? cause;
  String? longCause;

  BaseException({this.cause, this.longCause});

  @override
  dynamic error;

  @override
  RequestOptions requestOptions = RequestOptions(path: '');

  @override
  Response? response;

  @override
  StackTrace? stackTrace;

  @override
  DioErrorType type = DioErrorType.other;

  @override
  String get message => throw UnimplementedError();

  BaseException.asDioError(DioError err) {
    if (_testTimeoutException(err)) {
      throw TimeoutException("Tempo de conexão expirado.");
    } else if (_testNoConnectionWithServerException(err)) {
      throw NoConnectionWithServerException();
    }
    if (err.response?.data != null) {
      final error = err.response?.data;
      cause = error.toString();
    } else {
      cause = 'Algum erro inesperado ocorreu.';
      longCause = 'Algum erro inesperado ocorreu.\nTente novamente mais tarde.';
    }
  }

  bool _testTimeoutException(DioError err) {
    return err.type == DioErrorType.connectTimeout ||
        err.type == DioErrorType.receiveTimeout;
  }

  bool _testNoConnectionWithServerException(DioError err) {
    return err.error is SocketException;
  }
}
