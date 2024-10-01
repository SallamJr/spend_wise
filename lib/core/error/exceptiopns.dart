import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:spend_wise/core/api/status_code.dart';
import 'package:spend_wise/core/error/error_model.dart';
class ServerException extends Equatable implements Exception {
  final String? message;
  final ErrorModel? errModel;

  const ServerException(this.errModel, [this.message]);

  @override
  List<Object?> get props => [message];

  @override
  String toString() {
    return '$message';
  }
}

class FetchDataException extends ServerException {
  const FetchDataException([message])
      : super("Error During Communication" as ErrorModel);
}

class BadRequestException extends ServerException {
  const BadRequestException([message]) : super("Bad Request" as ErrorModel);
}

class UnauthorizedException extends ServerException {
  const UnauthorizedException([message]) : super("Unauthorized" as ErrorModel);
}

class NotFoundException extends ServerException {
  const NotFoundException([message])
      : super("Requested Info Not Found" as ErrorModel);
}

class ConflictException extends ServerException {
  const ConflictException([message]) : super("Conflict Occurred" as ErrorModel);
}

class InternalServerErrorException extends ServerException {
  const InternalServerErrorException([message])
      : super("Internal Server Error" as ErrorModel);
}

class NoInternetConnectionException extends ServerException {
  const NoInternetConnectionException([message])
      : super("No Internet Connection" as ErrorModel);
}

class CacheException implements Exception {}

void handelDioExceptions(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServerException(ErrorModel.fromJson(e.response!.data));

    case DioExceptionType.sendTimeout:
      throw ServerException(ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.receiveTimeout:
      throw ServerException(ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.badCertificate:
      throw ServerException(ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.badResponse:
      switch (e.response?.statusCode) {
        case StatusCode.badRequest:
          throw ServerException(ErrorModel.fromJson(e.response!.data));
        case StatusCode.unauthorized:
          throw ServerException(ErrorModel.fromJson(e.response!.data));
        case StatusCode.forbidden:
          throw ServerException(ErrorModel.fromJson(e.response!.data));
        case StatusCode.notFound:
          throw ServerException(ErrorModel.fromJson(e.response!.data));
        case StatusCode.confilct:
          throw ServerException(ErrorModel.fromJson(e.response!.data));
        case StatusCode.badGateWay:
          throw ServerException(ErrorModel.fromJson(e.response!.data));
      }
    case DioExceptionType.cancel:
      throw ServerException(ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.connectionError:
      throw ServerException(ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.unknown:
      throw ServerException(ErrorModel.fromJson(e.response!.data));
  }
}