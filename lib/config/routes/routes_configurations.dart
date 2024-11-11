import 'package:go_router/go_router.dart';
import 'package:spend_wise/config/routes/app_routes.dart';
import 'package:spend_wise/features/authentication/presentation/screens/email_sent_screen.dart';
import 'package:spend_wise/features/authentication/presentation/screens/forget_password_screen.dart';
import 'package:spend_wise/features/authentication/presentation/screens/login_screen.dart';
import 'package:spend_wise/features/authentication/presentation/screens/reset_password_screen.dart';
import 'package:spend_wise/features/authentication/presentation/screens/sign_up_screen.dart';
import 'package:spend_wise/features/category/presentation/screens/category_screen.dart';
import 'package:spend_wise/features/expenses/presentation/screens/expenses_screen.dart';
import 'package:spend_wise/features/home/presentation/screens/home_screen.dart';
import 'package:spend_wise/core/unused/onboarding/screens/get_started_screen.dart';
import 'package:spend_wise/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:spend_wise/core/unused/onboarding/screens/welcome_screen.dart';
import 'package:spend_wise/features/settings/presentation/screens/currency_screen.dart';
import 'package:spend_wise/features/settings/presentation/screens/lanuage_screen.dart';
import 'package:spend_wise/features/settings/presentation/screens/profile_settings_screen.dart';
import 'package:spend_wise/features/settings/presentation/screens/settings_screen.dart';
import 'package:spend_wise/features/settings/presentation/screens/themes_screen.dart';
import 'package:spend_wise/features/splash/presentation/screens/splash_screen.dart';
final router = GoRouter(
  initialLocation: AppRoutes.initialRoute,
  routes: <RouteBase>[
      GoRoute(
      name: AppRoutes
          .initialRoute, // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/splashScreen',
      builder: (context, state) => const SplashScreen(),
    ),
     GoRoute(
      name: AppRoutes
          .welcomeRoute, // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/welcomeScreen',
      builder: (context, state) => const WelcomeScreen(),
    ),
     GoRoute(
      name: AppRoutes
          .onboardingRoute, // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/onboardingScreen',
      builder: (context, state) => const OnboardingScreen(),
    ),
     GoRoute(
      name: AppRoutes
          .getstartedRoute, // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/getstartedScreen',
      builder: (context, state) => const GetStartedScreen(),
    ),
     GoRoute(
      name: AppRoutes
          .loginRoute, // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/loginScreen',
      builder: (context, state) => const LoginScreen(),
    ),
       GoRoute(
      name: AppRoutes
          .forgotPasswordRoute, // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/forgotPasswordScreen',
      builder: (context, state) => const ForgotPasswordScreen(),
    ),
      GoRoute(
      name: AppRoutes
          .emaiSentRoute, // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/emailSentScreen',
      builder: (context, state) => const EmailSentScreen(),
    ),
     GoRoute(
      name: AppRoutes
          .resetPasswordRoute, // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/resetPasswordScreen',
      builder: (context, state) => const ResetPasswordScreen(),
    ),
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
       GoRoute(
      name: AppRoutes.settingsRoute,
      path: '/settingsScreen',
      builder: (context, state) => const SettingsScreen(),
    ),
      GoRoute(
      name: AppRoutes.profileSettingsRoute,
      path: '/profileSettingsScreen',
      builder: (context, state) => const ProfileSettingsScreen(),
    ),
     GoRoute(
      name: AppRoutes.languageRoute,
      path: '/languageScreen',
      builder: (context, state) => const LanuageScreen(),
    ),
     GoRoute(
      name: AppRoutes.currencyRoute,
      path: '/currencyScreen',
      builder: (context, state) => const CurrencyScreen(),
    ),
     GoRoute(
      name: AppRoutes.themesRoute,
      path: '/themesScreen',
      builder: (context, state) => const ThemesScreen(),
    ),
    
  ],
);