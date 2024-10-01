import 'package:flutter/material.dart';
import 'package:spend_wise/core/utils/app_colors.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: AppColors.primaryCards,
        child: Icon(Icons.add,color: AppColors.primaryButtons,)
      ),
    
          );
  }
}