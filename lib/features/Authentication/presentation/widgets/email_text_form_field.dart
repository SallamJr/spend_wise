import 'package:flutter/material.dart';
import 'package:spend_wise/core/functions/custom_snack_bar.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/generated/l10n.dart';

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
            hintText: Localizely.of(context).email,
            hintStyle: TextStyle(color: AppColors.secondaryFonts),
            filled: true,
            fillColor: AppColors.primary,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(color: AppColors.primaryButtons),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(color: AppColors.primaryButtons),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(color: AppColors.primaryButtons),
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              showCustomSnackbar(context, Localizely.of(context).enterEmail);
              return Localizely.of(context).enterEmail;
            }
            // Regular expression for email validation
            final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
            if (!emailRegex.hasMatch(value)) {
              showCustomSnackbar(context, Localizely.of(context).invalidEmail);
              return Localizely.of(context).invalidEmail;
            }
            return null;
          },
        ),
      ),
    );
  }
}
