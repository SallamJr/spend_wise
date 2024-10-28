import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:spend_wise/core/api/api_consumer.dart';
import 'package:spend_wise/core/api/end_points.dart';
import 'package:spend_wise/core/error/exceptiopns.dart';
import 'package:spend_wise/core/helpers/cache_helper.dart';
import 'package:spend_wise/core/utils/enums.dart';
import 'package:spend_wise/features/category/data/models/category_model.dart';
import 'package:spend_wise/features/category/data/repositories/category_repository.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
   final BaseApiConsumer api;
  final CategoryRepository categoryRepository;
  CategoryResponseModel? categoryResponseModel;
  CategoryCubit({required this.api,required this.categoryRepository}) : super(CategoryState.initial());
    Future<void> category() async {
    try {
      emit(
        state.copyWith(
          status: GenericStatus.loading,
        ),
      );
      final categoryResponse =
          await api.post(EndPoints.categoriesUrl, body: {});

      categoryResponse.fold(
        (error) {
          // Handle the error case
          emit(state.copyWith(status: GenericStatus.error, message: error));
        },
        (response) {
          // Handle the success case
          categoryResponseModel = CategoryResponseModel.fromJson(response.data);
          if (categoryResponseModel != null && categoryResponseModel!.message != null) {
          final decodedToken = JwtDecoder.decode(categoryResponseModel!.message!);
          // after refactor categoryResponseModel ....data which is decoded
          //! save token using sharedpreferences
          CacheHelper().saveData(
              key: ApiKeys.userAuthToken,
              value: categoryResponseModel!.message);
          //! save id using sharedpreferences
          CacheHelper().saveData(
              key: ApiKeys.userAuthId, value: decodedToken[ApiKeys.userAuthId]);
          emit(state.copyWith(status: GenericStatus.success));
          }
        },
      );
    } on ServerException {
      emit(state.copyWith(status: GenericStatus.error, message: 'error'));
    }
  }
}
