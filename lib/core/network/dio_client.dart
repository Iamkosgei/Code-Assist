import 'package:code_assist/core/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import 'end_points.dart';
import 'interceptors/logging_interceptor.dart';

@module
abstract class DioClient {
  @lazySingleton
  Dio get dio => _getDio();

  Dio _getDio() {
    final options = BaseOptions(
      baseUrl: baseUrl,
    );
    final dio = Dio(options);

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          options.headers['Authorization'] = 'Bearer $accessToken';
          return handler.next(options);
        },
        onError: (DioException e, handler) async {
          return handler.next(e);
        },
      ),
    );

    if (kDebugMode) {
      dio.interceptors.add(LoggingInterceptor());
    }

    return dio;
  }
}
