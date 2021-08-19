import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'auth_interceptor_wrapper.dart';

class CustomDio{

  static late CustomDio _simpleInstance;
  static late CustomDio _authInstance;
  late Dio _dio;

  BaseOptions options = BaseOptions(
    baseUrl: dotenv.env['base_url']!,
    connectTimeout: int.parse(dotenv.env['dio_connectTimeout']!),
    receiveTimeout: int.parse(dotenv.env['dio_receiveTimeout']!),
  );

  CustomDio._(){
    _dio = Dio(options);
  }

  CustomDio.auth(){
    _dio = Dio(options);
    _dio.interceptors.add(AuthInterceptorWrapper());
  }

  static Dio get instance {
    _simpleInstance = CustomDio._();
    return _simpleInstance._dio;
  }

  static Dio get authInstance {
    _authInstance = CustomDio.auth();
    return _authInstance._dio;
  }
}