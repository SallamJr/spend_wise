import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:spend_wise/core/api/api_consumer.dart';
import 'package:spend_wise/core/api/end_points.dart';
import 'package:spend_wise/core/error/exceptiopns.dart';
import 'package:spend_wise/core/helpers/cache_helper.dart';
import 'package:spend_wise/core/helpers/enums.dart';
import 'package:spend_wise/features/Authentication/data/models/signup_model.dart';
import 'package:spend_wise/features/Authentication/data/repositories/auth_repository.dart';
part 'signup_state.dart';
class SignupCubit extends Cubit<SignupState> {
  SignupCubit({this.api, this.authRepo}) : super(SignupState.initial());
  final BaseApiConsumer? api;
  final BaseAuthRepository? authRepo;
  SignupModel? registerUser;
  final TextEditingController signUpNameController = TextEditingController();
  final TextEditingController signUpEmailController = TextEditingController();
  final TextEditingController signUpPasswordController =
      TextEditingController();
  final TextEditingController signUpConfirmPasswordController =
      TextEditingController();
  Future<void> signUp() async {
    try {
      emit(state.copyWith(
        status: GenericStatus.loading,
      ));
      final signupResponse = await api?.post(EndPoints.registerUrl, body: {
        ApiKeys.userAuthEmail: signUpEmailController.text,
        ApiKeys.userAuthPassword: signUpPasswordController.text,
        ApiKeys.userAuthName: signUpNameController.text,
      });
      emit(state.copyWith(status: GenericStatus.success));
      registerUser =
          SignupModel.fromJson(signupResponse as Map<String, dynamic>);
      final decodedToken = JwtDecoder.decode(registerUser!.id);
      //! save token using sharedpreferences
      CacheHelper()
          .saveData(key: ApiKeys.userAuthToken, value: registerUser!.id);
      //! save id using sharedpreferences
      CacheHelper().saveData(
          key: ApiKeys.userAuthId, value: decodedToken[ApiKeys.userAuthId]);
    } on ServerException {
      emit(state.copyWith(status: GenericStatus.error, message: 'error'));
    }
  }
}