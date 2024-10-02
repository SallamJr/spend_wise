import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spend_wise/app.dart';
import 'package:spend_wise/bloc_observer.dart';
import 'package:spend_wise/di.dart' as locator;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await dotenv.load(fileName: ".env");
  await locator.setup();
  Bloc.observer = AppBlocObserver();
  runApp(
    const MyApp(),
  );
}
// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home:HomeScreen(),
//     );
//   }
// }