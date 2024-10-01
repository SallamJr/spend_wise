import 'package:flutter/material.dart';
import 'package:spend_wise/core/utils/app_colors.dart';

class CustomTextButton extends StatelessWidget {
   final String text;
    final VoidCallback onPressed;
  const CustomTextButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primaryButtons, 
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            textStyle: const TextStyle(fontSize: 16),
          ), 
          child: Text(text),
        );
  }
}