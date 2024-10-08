import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:spend_wise/core/api/api_consumer.dart';
import 'package:spend_wise/core/api/end_points.dart';
import 'package:spend_wise/core/helpers/cache_helper.dart';
import 'package:spend_wise/core/helpers/enums.dart';
import 'package:spend_wise/features/home/data/models/home_model.dart';
import 'package:spend_wise/features/home/data/repositories/home_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit( {required this.api, required this.homeRepository}  ) : super(const HomeState());
  final BaseApiConsumer api;
  final BaseHomeRepository homeRepository;
  HomeModel? homeModel;

  Future<void> fetchData() async {
    try {
      emit(state.copyWith(
        state: GenericStatus.loading,
      ));

      Future.delayed(const Duration(seconds: 2));
      final homeUserResponse = await api.get(
        EndPoints.getUserId(CacheHelper().getData(key: ApiKeys.userAuthId)),
      );
      final homeUser =
          HomeModel.fromJson(homeUserResponse as Map<String, dynamic>);
      emit(state.copyWith(
        state: GenericStatus.success,
        data: [homeUser],
      ));
    } catch (e) {
      emit(state.copyWith(
        state: GenericStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }
}
