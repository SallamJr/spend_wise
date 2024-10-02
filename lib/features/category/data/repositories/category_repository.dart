import 'package:dartz/dartz.dart';
import 'package:spend_wise/core/api/api_consumer.dart';
import 'package:spend_wise/core/api/end_points.dart';
import 'package:spend_wise/features/category/data/models/category_model.dart';

abstract class BaseCategoryRepository {
  Future<Either<String, CategoryResponseModel>> createCategories({
    required String message,
    required CategoryResponseModel data,
  });

  Future<Either<String, CategoryResponseModel>> getAllCategories({
    required String message,
    required CategoryResponseModel data,
  });
  Future<Either<String, CategoryResponseModel>> getCategoriesById({
    required String message,
    required CategoryResponseModel data,
  });
  Future<Either<String, CategoryResponseModel>> getCategoryTotalExpenses({
    required String message,
    required CategoryResponseModel data,
  });
  Future<Either<String, CategoryResponseModel>> delCategoryById({
    required String message,
    required CategoryResponseModel data,
  });
  Future<Either<String, CategoryResponseModel>> updateCategoryById({
    required String message,
    required CategoryResponseModel data,
  });
  Future<Either<String, CategoryResponseModel>> uploadCategoryImage({
    required String message,
    required CategoryResponseModel data,
  });
}

class CategoryRepository implements BaseCategoryRepository {
  CategoryRepository({
    required this.apiConsumer,
  });

  final BaseApiConsumer apiConsumer;

  @override
  Future<Either<String, CategoryResponseModel>> createCategories({
    required String message,
    required CategoryResponseModel data,
  }) async {
    try {
      final response = await apiConsumer.post(EndPoints.categoriesUrl, body: {
        'message': message,
        'data': data,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            CategoryResponseModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }

  @override
  Future<Either<String, CategoryResponseModel>> delCategoryById(
      {required String message, required CategoryResponseModel data}) async {
    try {
      final response = await apiConsumer.delete(EndPoints.categoriesUrl, body: {
        'message': message,
        'data': data,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            CategoryResponseModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }

  @override
  Future<Either<String, CategoryResponseModel>> getAllCategories(
      {required String message, required CategoryResponseModel data}) async {
    try {
      final response =
          await apiConsumer.get(EndPoints.categoriesUrl, queryParameters: {
        'message': message,
        'data': data,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            CategoryResponseModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }

  @override
  Future<Either<String, CategoryResponseModel>> getCategoriesById(
      {required String message, required CategoryResponseModel data}) async {
    try {
      final response =
          await apiConsumer.get(EndPoints.categoriesUrl, queryParameters: {
        'message': message,
        'data': data,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            CategoryResponseModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }

  @override
  Future<Either<String, CategoryResponseModel>> getCategoryTotalExpenses(
      {required String message, required CategoryResponseModel data}) async {
    try {
      final response =
          await apiConsumer.get(EndPoints.categoriesUrl, queryParameters: {
        'message': message,
        'data': data,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            CategoryResponseModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }

  @override
  Future<Either<String, CategoryResponseModel>> updateCategoryById(
      {required String message, required CategoryResponseModel data}) async {
    try {
      final response = await apiConsumer.put(EndPoints.categoriesUrl, body: {
        'message': message,
        'data': data,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            CategoryResponseModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }

  @override
  Future<Either<String, CategoryResponseModel>> uploadCategoryImage(
      {required String message, required CategoryResponseModel data}) async {
    try {
      final response = await apiConsumer.post(EndPoints.categoriesUrl, body: {
        'message': message,
        'data': data,
      });
      return response.fold(
        (failure) {
          return Left(failure);
        },
        (success) {
          return Right(
            CategoryResponseModel.fromJson(success.data),
          );
        },
      );
    } catch (e, s) {
      return Left('$e - $s');
    }
  }
}