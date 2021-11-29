import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:meal_app/domain/interceptor/dio_interceptor.dart';
import '../../domain/json_parser/parent_parser.dart';

class NetworkRequest {
  final String url;
  final Map<String, dynamic>? query;
  NetworkRequest({required this.url, this.query});
  final dio = Dio(BaseOptions(connectTimeout: 3000))
    ..interceptors.add(DioInterceptor());

  //Request Get For All
  Future<T> executeGet<T>({required ParentParser<T> parser}) async {
    CancelToken token = CancelToken();
    Completer<T> _completer = Completer<T>();

    try {
      final result = await dio.get<String>(url,
          cancelToken: token, queryParameters: query);
      _completer.complete(parser.parseFromJson(result.data ?? ''));
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout) {
        print('Connection TimeOut');
      }
    } on Exception catch (e) {
      if (e.runtimeType == SocketException) {
        SocketException.closed();
        print("First Socket Exception");
      }
      print("Socket Exception");
    }
    return _completer.future;
  }
}
