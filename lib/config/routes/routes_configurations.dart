import 'package:go_router/go_router.dart';
import 'package:spend_wise/config/routes/app_routes.dart';
import 'package:spend_wise/features/Authentication/presentation/screens/sign_up_screen.dart';
import 'package:spend_wise/features/category/presentation/screens/category_screen.dart';
import 'package:spend_wise/features/expenses/presentation/screens/expenses_screen.dart';
import 'package:spend_wise/features/home/presentation/screens/home_screen.dart';
final router = GoRouter(
  initialLocation: '/loginScreen',
  routes: <RouteBase>[
    GoRoute(
      name: AppRoutes
          .signupRoute, // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/signupScreen',
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      name: AppRoutes
          .homeRoute, // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/homeScreen',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: AppRoutes.categoryAddingRoute,
      path: '/categoryScreen',
      builder: (context, state) => const CategoryScreen(),
    ),
    GoRoute(
      name: AppRoutes.expensesAddingRoute,
      path: '/expensesScreen',
      builder: (context, state) => const ExpensesScreen(),
    ),
  ],
);