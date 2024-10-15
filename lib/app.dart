import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spend_wise/config/routes/routes_configurations.dart';
import 'package:spend_wise/config/themes/app_theme.dart';
import 'package:spend_wise/di.dart' as di;
import 'package:spend_wise/features/Authentication/presentation/controllers/login_cubit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:spend_wise/generated/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.locator<LoginCubit>(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        //default locale for the app
        locale: const Locale('en'),
        supportedLocales: S.delegate.supportedLocales,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        theme: lightThemeData(),
        darkTheme: darkThemeData(),
      ),
    );
  }
}
