import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: FloatingActionButton(
        // Add your onPressed code here!
        onPressed: () => context.go('/categoryScreen'),
        backgroundColor: Theme.of(context).colorScheme.surface,
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
