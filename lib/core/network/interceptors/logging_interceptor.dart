import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class LoggingInterceptor extends Interceptor {
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    debugPrint("--> ${options.method} ${options.baseUrl}${options.path}");
    debugPrint("Headers: ${options.headers}");
    debugPrint("Query Parameters: ${options.queryParameters}");
    debugPrint("Request Data: ${options.data}");
    return handler.next(options);
  }

  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    debugPrint(
        "<-- ${response.statusCode} ${response.requestOptions.baseUrl}${response.requestOptions.path}");
    debugPrint("Response Data: ${response.data}");
    return handler.next(response);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    debugPrint(
        "<-- Error ${err.response?.statusCode} ${err.requestOptions.baseUrl}${err.requestOptions.path}");
    debugPrint("Error Message: ${err.message}");
    if (err.response != null) {
      debugPrint("Response Data: ${err.response?.data}");
    }
    return handler.reject(err);
  }
}
