import 'package:dio/dio.dart';
import 'package:fake_chat_ui/core/config/const.dart';
import 'package:fake_chat_ui/core/services/network/interceptors/log_interceptor.dart'
    as app_chat;

class DioClient {
  late Dio dio;

  DioClient({String baseUrl = kClientBaseUrl, Dio? dioInstance}) {
    if (dioInstance == null) {
      dio = Dio();
    } else {
      dio = dioInstance;
    }
    dio.options.baseUrl = baseUrl;
  }

  DioClient.withLogs({String baseUrl = kClientBaseUrl, Dio? dioInstance}) {
    if (dioInstance == null) {
      dio = Dio();
    } else {
      dio = dioInstance;
    }
    dio.options.baseUrl = baseUrl;
    dio.interceptors.add(app_chat.LogInterceptor());
  }
}
