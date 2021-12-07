import 'package:dio/dio.dart';

class LogInterceptor extends InterceptorsWrapper {
  @override
  onRequest(RequestOptions options, handler) {
    print('======================= ON_REQUEST =======================');
    print('[${options.method}] path: ${options.path}');
    print('data: ${options.data}');
    print('headers: ${options.headers}');
    print('queryParameters: ${options.queryParameters}');
    print('==========================================================');
    return handler.next(options);
  }

  @override
  onResponse(Response response, handler) {
    print('======================= ON_RESPONSE =======================');
    print('path: ${response.requestOptions.path}');
    print('statusCode: ${response.statusCode}');
    print('response: $response');
    print('===========================================================');
    return handler.next(response);
  }

  @override
  onError(DioError err, handler) async {
    print('======================= ON_ERROR =======================');
    print('base: ${err.requestOptions.baseUrl}');
    print('method: ${err.requestOptions.method}');
    print('path: [${err.requestOptions.method}] ${err.requestOptions.path}');
    print('statusCode: ${err.response?.statusCode}');
    print('requestData: ${err.requestOptions.data}');
    print('responseData: ${err.response?.data}');
    print('message: ${err.message}');
    print('===========================================================');
    return handler.next(err);
  }
}
