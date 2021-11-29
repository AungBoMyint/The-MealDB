import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print("RequestOptions: $options \n Handler: $handler");
    super.onRequest(options, handler);
  }

  /*@override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print("Response: $response \n Handler: $handler");
    super.onResponse(response, handler);
  }*/

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print("Error: $err \n Handler: $handler");
    super.onError(err, handler);
  }
}
