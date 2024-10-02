import 'package:dartz/dartz.dart';
import 'package:spend_wise/core/api/api_consumer.dart';
import 'package:spend_wise/core/api/end_points.dart';
import 'package:spend_wise/features/expenses/data/models/expenses_model.dart';


abstract class BaseExpensesRepository {
  Future<Either<String, ExpensesModel>> createExpenses({
    required String message,
    required ExpensesModel data,
  });
  Future<Either<String, ExpensesModel>> getAllExpenses({
    required String message,
    required ExpensesModel data,
  });
  Future<Either<String, ExpensesModel>> getExpensesById({
    required String message,
    required ExpensesModel data,
  });
  Future<Either<String, ExpensesModel>> deleteExpensesById({
    required String message,
    required ExpensesModel data,
  });
  Future<Either<String, ExpensesModel>> updateExpensesById({
    required String message,
    required ExpensesModel data,
  });
  Future<Either<String, ExpensesModel>> uploadExpenseImage({
    required String message,
    required ExpensesModel data,
  });
}

class ExpensesRepository implements BaseExpensesRepository {
  ExpensesRepository({
    required this.apiConsumer,
  });

  final BaseApiConsumer apiConsumer;

  @override
  Future<Either<String, ExpensesModel>> createExpenses({
    required String message,
    required ExpensesModel data,
  }) async {
    try {
      final response = await apiConsumer.post(EndPoints.expensesUrl, body: {
        'message': message,
        'data': data,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            ExpensesModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }

  @override
  Future<Either<String, ExpensesModel>> deleteExpensesById(
      {required String message, required ExpensesModel data}) async {
    try {
      final response = await apiConsumer.delete(EndPoints.expensesUrl, body: {
        'message': message,
        'data': data,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            ExpensesModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }

  @override
  Future<Either<String, ExpensesModel>> getAllExpenses(
      {required String message, required ExpensesModel data}) async {
    try {
      final response =
          await apiConsumer.get(EndPoints.expensesUrl, queryParameters: {
        'message': message,
        'data': data,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            ExpensesModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }

  @override
  Future<Either<String, ExpensesModel>> getExpensesById(
      {required String message, required ExpensesModel data}) async {
    try {
      final response =
          await apiConsumer.get(EndPoints.expensesUrl, queryParameters: {
        'message': message,
        'data': data,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            ExpensesModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }

  @override
  Future<Either<String, ExpensesModel>> updateExpensesById(
      {required String message, required ExpensesModel data}) async {
    try {
      final response = await apiConsumer.put(EndPoints.expensesUrl, body: {
        'message': message,
        'data': data,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            ExpensesModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }

  @override
  Future<Either<String, ExpensesModel>> uploadExpenseImage(
      {required String message, required ExpensesModel data}) async {
    try {
      final response = await apiConsumer.post(EndPoints.expensesUrl, body: {
        'message': message,
        'data': data,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            ExpensesModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }
}