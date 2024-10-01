import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:spend_wise/core/api/api_consumer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dartz/dartz.dart';
import 'package:spend_wise/core/api/end_points.dart';
import 'package:spend_wise/core/error/exceptiopns.dart';
import 'package:spend_wise/core/utils/app_strings.dart';

class DioConsumer implements BaseApiConsumer {
  DioConsumer({
    required this.dio,
    required this.prefs,
  });

  final Dio dio;
  final SharedPreferences prefs;

  @override
  void init() {
    dio.options = BaseOptions(
      baseUrl: EndPoints.baseUrl,
      followRedirects: false,
      headers: {
        'Content-Type': 'application/json',
        // there are different types : mutlipart form, text plain
        'Accept': 'application/json',
        'lang': AppStrings.englishCode,
      },
    );
    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      );
    }
  }

  @override
  void attachToken({required String token}) {
    dio.options.headers = {
      'Authorization': 'Bearer $token',
    };
  }

  @override
  void removeToken() {
    dio.options.headers.remove('Authorization');
  }

  @override
  Future<Either<String, Response>> get(String url,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.get(url, queryParameters: queryParameters);
      return Right(response);
    } on DioException catch (e) {
      handelDioExceptions(e);
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, Response>> post(String url,
      {Map<String, dynamic>? headers, Map<String, dynamic>? body}) async {
    try {
      final response = await dio.post(
        url,
        data: body,
        options: Options(
          headers: headers,
        ),
      );
      return Right(response);
    } on DioException catch (e) {
      handelDioExceptions(e);
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, Response>> delete(String url,
      {Map<String, dynamic>? headers, Map<String, dynamic>? body}) async {
    try {
      final response = await dio.delete(
        url,
        data: body,
        options: Options(
          headers: headers,
        ),
      );
      return Right(response);
    } on DioException catch (e) {
      handelDioExceptions(e);
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, Response>> put(String url,
      {Map<String, dynamic>? headers, Map<String, dynamic>? body}) async {
    try {
      final response = await dio.put(
        url,
        data: body,
        options: Options(
          headers: headers,
        ),
      );
      return Right(response);
    } on DioException catch (e) {
      handelDioExceptions(e);
      return Left(e.toString());
    }
  }
}