import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'http_method.dart';

part 'http_helper.freezed.dart';

class HttpHelper {
  HttpHelper({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  Future<RequestResult<T>> request<T>(
    String pathOrUrl, {
    HttpMethod method = HttpMethod.GET,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic> headers = const {},
    dynamic data,
    T Function(dynamic responseData)? parser,
    int retry = 1,
    int intents = 0,
  }) async {
    try {
      final response = await _dio.request(
        pathOrUrl,
        options: Options(
          method: method.name,
          headers: headers,
        ),
        queryParameters: queryParameters,
        data: data,
      );

      return RequestResult.success(
        statusCode: response.statusCode!,
        data: parser != null
            ? parser(response.data)
            : json.encode(response.data) as T,
      );
    } on DioException catch (e, s) {
      if ([
        DioExceptionType.connectionTimeout,
        DioExceptionType.receiveTimeout,
        DioExceptionType.sendTimeout,
      ].contains(e.type)) {
        return RequestResult.networkError(stackTrace: s);
      }

      if (e.type == DioExceptionType.badResponse && e.response != null) {
        if (intents + 1 < retry) {
          return request<T>(
            pathOrUrl,
            intents: intents + 1,
            headers: headers,
            parser: parser,
            queryParameters: queryParameters,
            data: data,
          );
        }
        return RequestResult.unhandledError(
          exception: e.response!.statusCode!,
          stackTrace: s,
        );
      }

      return RequestResult.networkError(stackTrace: s);
    } catch (e, s) {
      return RequestResult.unhandledError(
        exception: e,
        stackTrace: s,
      );
    }
  }
}

@freezed
class RequestResult<T> with _$RequestResult<T> {
  factory RequestResult.success({
    required int statusCode,
    required T data,
  }) = _Success;

  factory RequestResult.networkError({
    required StackTrace stackTrace,
  }) = _NetworkError;

  factory RequestResult.unhandledError({
    required Object exception,
    required StackTrace stackTrace,
  }) = _UnhandledException;
}
