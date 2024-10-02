import 'package:flutter/material.dart';
import 'package:spend_wise/core/utils/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  final String text; final VoidCallback onPressed;
  const CustomAppBar({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: SizedBox(
        width: double.infinity,
        child:
        AppBar(
          centerTitle: true,
          backgroundColor: AppColors.primary,
          title: Text(
            text,
            style:  TextStyle(color: AppColors.primaryFonts,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(onPressed: onPressed, icon:  Icon(Icons.arrow_back,color: AppColors.primaryFonts,),)
        )
      ),
    );
  }
}