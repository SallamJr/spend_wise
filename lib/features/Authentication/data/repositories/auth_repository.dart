import 'package:dartz/dartz.dart';
import 'package:spend_wise/core/api/api_consumer.dart';
import 'package:spend_wise/core/api/end_points.dart';
import 'package:spend_wise/features/authentication/data/models/login_model.dart';
import 'package:spend_wise/features/authentication/data/models/signup_model.dart';

abstract class BaseAuthRepository {
  Future<Either<String, LoginResponseModel>> login({
    required String email,
    required String password,
  });

  Future<Either<String, SignupResponseModel>> signup({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  });
}

class AuthRepository implements BaseAuthRepository {
  AuthRepository({
    required this.apiConsumer,
  });

  final BaseApiConsumer apiConsumer;

  @override
  Future<Either<String, LoginResponseModel>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await apiConsumer.post(EndPoints.loginUrl, body: {
        'email': email,
        'password': password,
      });

      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            LoginResponseModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }

  @override
  Future<Either<String, SignupResponseModel>> signup(
      //prefered to change string message parameter in every function to failure class later!.
      {required String name,
      required String email,
      required String password,
      required String confirmPassword}) async {
    try {
      final response = await apiConsumer.post(EndPoints.registerUrl, body: {
        'name': name,
        'email': email,
        'password': password,
        'confirmPassword': confirmPassword,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            SignupResponseModel.fromJson(success.data),
          );
        },
      );

      //   Refactor this section for better performance later by importing exceptions file and use it .
    } on Exception catch (e, s) {
      return Left('$e - $s');
    }
  }
}