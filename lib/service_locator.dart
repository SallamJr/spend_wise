import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:spend_wise/core/api/api_consumer.dart';
import 'package:spend_wise/core/api/dio_consumer.dart';
import 'package:spend_wise/core/controllers/localization_cubit.dart';
import 'package:spend_wise/core/controllers/theme_cubit.dart';
import 'package:spend_wise/core/helpers/network_info.dart';
import 'package:spend_wise/features/authentication/data/repositories/auth_repository.dart';
import 'package:spend_wise/features/authentication/presentation/controllers/login_cubit.dart';
import 'package:spend_wise/features/authentication/presentation/controllers/signup_cubit.dart';
import 'package:spend_wise/features/category/data/repositories/category_repository.dart';
import 'package:spend_wise/features/category/presentation/controllers/category_cubit.dart';
import 'package:spend_wise/features/expenses/data/repositories/expenses_repository.dart';
import 'package:spend_wise/features/expenses/presentation/controllers/expenses_cubit.dart';
import 'package:spend_wise/features/home/data/repositories/home_repository.dart';
import 'package:spend_wise/features/home/presentation/controllers/home_cubit.dart';

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

  //! Features ....Repositories

  // Auth Feature...Repository
  locator.registerLazySingleton<BaseAuthRepository>(
    () => AuthRepository(
      apiConsumer: locator(),
    ),
  );
  // Home Feature...Repository
  locator.registerLazySingleton(() => HomeRepository(apiConsumer: locator()));
  //Category Feature...Repository
  locator
      .registerLazySingleton(() => CategoryRepository(apiConsumer: locator()));
  // Expenses Feature...Repository
  locator
      .registerLazySingleton(() => ExpensesRepository(apiConsumer: locator()));

  //! Features....Cubits
  //localization cubit
  locator.registerLazySingleton(
    () => LocalizationCubit(),
  );
  //Theme cubit
  locator.registerLazySingleton(
    () => ThemeCubit(),
  );
  //signup cubit
  locator.registerLazySingleton(
    () => SignupCubit(api: locator(), authRepo: locator()),
  );

  //login cubit
  locator.registerLazySingleton(
    () => LoginCubit(
      authRepository: locator(), api: locator(),  
    ),
  );
  // home cubit
  locator.registerLazySingleton(
    () => HomeCubit(
      homeRepository: locator(),
      api: locator(),
    ),
  );
  //category cubit
  locator.registerLazySingleton(
    () => CategoryCubit(
      categoryRepository: locator(),
      api: locator(),
    ),
  );

  //expenses cubit
  locator.registerLazySingleton(
    () => ExpensesCubit(
      expensesRepository: locator(),
      api: locator(),
    ),
  );

  //! Features....DataSources
}
