import 'package:flutter/material.dart';
import 'package:spend_wise/config/routes/routes_configurations.dart';
import 'package:spend_wise/config/themes/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(),
      darkTheme: darkThemeData(),
    );
  }
}