import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:spend_wise/core/api/api_consumer.dart';
import 'package:spend_wise/core/api/end_points.dart';
import 'package:spend_wise/core/error/exceptiopns.dart';
import 'package:spend_wise/core/helpers/cache_helper.dart';
import 'package:spend_wise/core/utils/enums.dart';
import 'package:spend_wise/features/authentication/data/models/login_model.dart';
import 'package:spend_wise/features/authentication/data/repositories/auth_repository.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({
    required this.api,
    required this.authRepository,
  }) : super(
          LoginState.initial(),
        );
  final BaseApiConsumer api;
  final BaseAuthRepository authRepository;
  LoginModel? loginUser;

  final loginEmailController = TextEditingController();
  final loginPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> login() async {
    try {
      emit(
        state.copyWith(
          status: GenericStatus.loading,
        ),
      );
      final loginResponse = await api.post(EndPoints.loginUrl, body: {
        ApiKeys.userAuthEmail: loginEmailController.text,
        ApiKeys.userAuthPassword: loginPasswordController.text,
      });

      loginResponse.fold(
        (error) {
          // Handle the error case
          emit(state.copyWith(status: GenericStatus.error, message: error));
        },
        (response) {
          // Handle the success case
          loginUser = LoginModel.fromJson(response.data);
          final decodedToken = JwtDecoder.decode(loginUser!.token);
          //! save token using sharedpreferences
          CacheHelper()
              .saveData(key: ApiKeys.userAuthToken, value: loginUser!.token);
          //! save id using sharedpreferences
          CacheHelper().saveData(
              key: ApiKeys.userAuthId, value: decodedToken[ApiKeys.userAuthId]);
          emit(state.copyWith(status: GenericStatus.success));
        },
      );
    } on ServerException {
      emit(state.copyWith(status: GenericStatus.error, message: 'error'));
    }
  }
}
