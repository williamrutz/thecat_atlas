import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:synchronized/synchronized.dart' as synchronized;
import 'package:thecat_atlas/app/core/dio/custom_dio.dart';

class AuthInterceptorWrapper extends InterceptorsWrapper {
  synchronized.Lock lock = synchronized.Lock();

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final apiKey = dotenv.env['api_key'];
    options.headers["x-api-key"] = apiKey;

    // if (dotenv.env['profile'] == 'dev') {
    //   print("######## request");
    //   print("######## url ${options.uri}");
    //   print("######## method ${options.method}");
    //   print("######## data ${options.data}");
    //   print("######## headers ${options.headers}");
    // }
    return super.onRequest(options, handler);
  }

  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    if (dotenv.env['profile'] == 'dev') print("######## response");
    print("######## data ${response.data}");

    return super.onResponse(response, handler);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    print("######## on Error ${err.response}");

    if (err.type == DioErrorType.other) {
      await lock.synchronized(() async {
        final connection = await Connectivity().checkConnectivity();
        if (connection != ConnectivityResult.none) {
          return null;
        } else {
          return await Modular.to.pushNamed('/connection_error');
        }
      });

      final req = err.requestOptions;

      final options = Options(
        method: req.method,
        headers: req.headers
      );

      return CustomDio.authInstance.request(req.path, options: options, queryParameters: req.queryParameters);
    }

    print("######## RETORNOU DO ERRO ---------------------------");


    return err;
  }


}