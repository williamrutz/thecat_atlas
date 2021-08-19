import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AuthInterceptorWrapper extends InterceptorsWrapper {
  
  @override
  Future onRequest(RequestOptions options, RequestInterceptorHandler handler) async{
    final apiKey = dotenv.env['api_key'];
    options.headers["x-api-key"] = apiKey;

    if(dotenv.env['profile'] == 'dev'){
      print("######## request");
      print("######## url ${options.uri}");
      print("######## method ${options.method}");
      print("######## data ${options.data}");
      print("######## headers ${options.headers}");
    }
    return super.onRequest(options, handler);
  }

  @override
  Future onResponse(Response response, ResponseInterceptorHandler handler) async{
    if(dotenv.env['profile'] == 'dev')
      print("######## response");
      print("######## data ${response.data}");

    return super.onResponse(response, handler);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async{
      print("######## on Error ${err.response}");

      return super.onError(err, handler);
  }
}