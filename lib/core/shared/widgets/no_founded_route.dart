import 'package:flutter/material.dart';
import 'package:spend_wise/core/utils/app_strings.dart';

class NoFoundedRoute extends StatelessWidget {
  const NoFoundedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          AppStrings.noRouteFound,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}