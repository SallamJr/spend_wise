import 'package:flutter/material.dart';
import 'package:spend_wise/core/shared/functions/custom_snack_bar.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/core/utils/app_strings.dart';

class EmailTextFormField extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  EmailTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: TextFormField(
          cursorColor: AppColors.primaryButtons,
          decoration: InputDecoration(
            hintText: AppStrings.email,
            hintStyle:  TextStyle(color:AppColors.secondaryFonts),
            filled: true,
            fillColor: Colors.white,
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
          validator: (value) {
            if (value == null || value.isEmpty) {
              showCustomSnackbar(context, AppStrings.enterEmail);
              return AppStrings.enterEmail;
            }
            // Regular expression for email validation
            final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
            if (!emailRegex.hasMatch(value)) {
              showCustomSnackbar(context, AppStrings.invalidEmail);
              return AppStrings.invalidEmail;
            }
            return null;
          },
        ),
      ),
    );
  }
}
