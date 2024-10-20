import 'package:flutter/material.dart';

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
          cursorColor: Theme.of(context).colorScheme.surface,
          decoration: InputDecoration(
            hintText: text,
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
        ),
      ),
    );
  }
}
