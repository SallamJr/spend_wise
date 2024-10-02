import 'package:dartz/dartz.dart';
import 'package:spend_wise/core/api/api_consumer.dart';
import 'package:spend_wise/core/api/end_points.dart';
import 'package:spend_wise/features/home/data/models/home_model.dart';


abstract class BaseHomeRepository {
  Future<Either<String, HomeResponseModel>> getAllUsers({
    required String message,
    required HomeModel data,
  });

  // Add other methods as needed (e.g., update profile, fetch notifications, etc.)

  Future<Either<String, HomeResponseModel>> getUsersById({
    required String message,
    required HomeModel data,
  });
  Future<Either<String, HomeResponseModel>> updateUsers({
    required String message,
    required HomeModel data,
  });
  Future<Either<String, HomeResponseModel>> getUsersCount({
    required String message,
    required HomeModel data,
  });
  Future<Either<String, HomeResponseModel>> uploadProfilePicture({
    required String message,
    required HomeModel data,
  });
  Future<Either<String, HomeResponseModel>> deleteUserProfile({
    required String message,
    required HomeModel data,
  });
}

class HomeRepository implements BaseHomeRepository {
  HomeRepository({
    required this.apiConsumer,
  });

  final BaseApiConsumer apiConsumer;

  @override
  Future<Either<String, HomeResponseModel>> getAllUsers(
      {required String message, required HomeModel data}) async {
    try {
      final response =
          await apiConsumer.get(EndPoints.usersUrl, queryParameters: {
        'message': message,
        'data': data,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            HomeResponseModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }

  @override
  Future<Either<String, HomeResponseModel>> deleteUserProfile(
      {required String message, required HomeModel data}) async {
    try {
      final response = await apiConsumer.delete(EndPoints.usersUrl, body: {
        'message': message,
        'data': data,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            HomeResponseModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }

  @override
  Future<Either<String, HomeResponseModel>> getUsersById(
      {required String message, required HomeModel data}) async {
    try {
      final response =
          await apiConsumer.get(EndPoints.usersUrl, queryParameters: {
        'message': message,
        'data': data,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            HomeResponseModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }

  @override
  Future<Either<String, HomeResponseModel>> getUsersCount(
      {required String message, required HomeModel data}) async {
    try {
      final response =
          await apiConsumer.get(EndPoints.usersUrl, queryParameters: {
        'message': message,
        'data': data,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            HomeResponseModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }

  @override
  Future<Either<String, HomeResponseModel>> updateUsers(
      {required String message, required HomeModel data}) async {
    try {
      final response = await apiConsumer.put(EndPoints.usersUrl, body: {
        'message': message,
        'data': data,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            HomeResponseModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }

  @override
  Future<Either<String, HomeResponseModel>> uploadProfilePicture(
      {required String message, required HomeModel data}) async {
    try {
      final response = await apiConsumer.post(EndPoints.usersUrl, body: {
        'message': message,
        'data': data,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            HomeResponseModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }
  // Call the API and handle the response

  // required to be refactor later when knowning the body of the response.
}