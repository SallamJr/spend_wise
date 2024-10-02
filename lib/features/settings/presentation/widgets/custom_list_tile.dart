import 'package:flutter/material.dart';
import 'package:spend_wise/core/utils/app_colors.dart';

class CustomListTile extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData icon;
  const CustomListTile({
    super.key, required this.text, required this.onPressed, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  Icon(icon , color: AppColors.primaryFonts,size: 32,),
      title:  Text(text, style: TextStyle(color: AppColors.primaryFonts, 
      fontWeight: FontWeight.bold,fontSize: 18),),
      onTap: onPressed
    );
  }
}