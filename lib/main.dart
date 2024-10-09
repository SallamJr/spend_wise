import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spend_wise/app.dart';
import 'package:spend_wise/bloc_observer.dart';
import 'package:spend_wise/di.dart' as locator;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await dotenv.load(fileName: ".env");
  await locator.setup(); // Default to English
  Bloc.observer = AppBlocObserver();
  runApp(
    const MyApp(),
  );
}
