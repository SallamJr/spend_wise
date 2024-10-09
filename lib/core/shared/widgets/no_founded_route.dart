import 'package:flutter/material.dart';
import 'package:spend_wise/generated/l10n.dart';

class NoFoundedRoute extends StatelessWidget {
  const NoFoundedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          S.of(context).noRouteFound,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
