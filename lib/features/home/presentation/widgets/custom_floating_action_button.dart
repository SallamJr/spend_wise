import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/utils/app_colors.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: FloatingActionButton(
        // Add your onPressed code here!
        onPressed: () => context.go('/categoryScreen'),
        backgroundColor: AppColors.secondaryBackground,
        child: Icon(Icons.add,color: AppColors.pressedIcons,)
      ),
    
          );
  }
}