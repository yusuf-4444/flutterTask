import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;
  static Dio getDio() {
    Duration timeout = const Duration(seconds: 120);
    if (dio == null) {
      dio = Dio();
      dio!.options.connectTimeout = timeout;
      dio!.options.receiveTimeout = timeout;
      addInterceptor();
      return dio!;
    }
    return dio!;
  }

  static addDioHeaders() {
    dio!.options.headers['Content-Type'] = 'application/json';
    dio!.options.headers['Accept'] = 'application/json';
  }

  static addInterceptor() {
    dio!.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
      ),
    );
  }
}
