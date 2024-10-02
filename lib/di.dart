import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:spend_wise/core/api/api_consumer.dart';
import 'package:spend_wise/core/api/dio_consumer.dart';
import 'package:spend_wise/core/helpers/network_info.dart';
import 'package:spend_wise/features/Authentication/data/repositories/auth_repository.dart';
import 'package:spend_wise/features/Authentication/presentation/controllers/signup_cubit.dart';
import 'package:spend_wise/features/category/data/repositories/category_repository.dart';
import 'package:spend_wise/features/expenses/data/repositories/expenses_repository.dart';
import 'package:spend_wise/features/home/data/repositories/home_repository.dart';

final locator = GetIt.instance;

Future<void> setup() async {
  //! External
  // Shared Preferences
  final prefs = await SharedPreferences.getInstance();
  locator.registerLazySingleton(
    () => prefs,
  );

  // Dio
  locator.registerLazySingleton(
    () => Dio(),
  );
  //InternetConnectionChecker
  locator.registerLazySingleton(() => InternetConnectionChecker());

//!Core
//NetworkInfo
  locator.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: locator()));
  // ApiConsumer
  locator.registerLazySingleton<BaseApiConsumer>(
    () => DioConsumer(
      dio: locator(),
      prefs: locator(),
    )..init(),
  );

  //! Features
  //Repositories...
  // Auth Feature
  locator.registerLazySingleton<BaseAuthRepository>(
    () => AuthRepository(
      apiConsumer: locator(),
    ),
  );
  // Home Feature
  locator.registerLazySingleton(() => HomeRepository(apiConsumer: locator()));
  //Category Feature
  locator
      .registerLazySingleton(() => CategoryRepository(apiConsumer: locator()));
  // Expenses Feature
  locator
      .registerLazySingleton(() => ExpensesRepository(apiConsumer: locator()));

  //! Features....Cubits
  //signup cubit
  locator.registerFactory(
    () => SignupCubit(api: locator(), authRepo: locator()),
  );

  //login cubit
  // locator.registerFactory(
  //     () => LoginCubit(api: locator(), authRepository: locator()));
  // home cubit

  //! Features....DataSources
}