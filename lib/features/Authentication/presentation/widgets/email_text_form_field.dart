import 'package:flutter/material.dart';
import 'package:spend_wise/core/functions/custom_snack_bar.dart';
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
          cursorColor: Theme.of(context).colorScheme.surface,
          decoration: InputDecoration(
            hintText: Localizely.of(context).email,
            hintStyle: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
            filled: true,
            fillColor: Theme.of(context).colorScheme.primary,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.surface),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.surface),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.surface),
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
