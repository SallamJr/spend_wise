import 'package:flutter/material.dart';
import 'package:spend_wise/core/utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final String text;
   CustomTextFormField({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: TextFormField(
          cursorColor: AppColors.primaryButtons,
          decoration: InputDecoration(
            hintText: text,
            hintStyle:  TextStyle(color:AppColors.secondaryFonts),
            filled: true,
            fillColor: AppColors.primary,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide:  BorderSide(color: AppColors.primaryButtons),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide:  BorderSide(color: AppColors.primaryButtons),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide:  BorderSide(color: AppColors.primaryButtons),
            ),
          ),
        ),
      ),
    );
  }
}