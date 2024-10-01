import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class BaseApiConsumer {
  void init();

  void attachToken({
    required String token,
  });

  void removeToken();

  Future<Either<String, Response>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
  });

  Future<Either<String, Response>> post(
    String url, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  });

  Future<Either<String, Response>> put(
    String url, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  });

  Future<Either<String, Response>> delete(
    String url, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  });
}