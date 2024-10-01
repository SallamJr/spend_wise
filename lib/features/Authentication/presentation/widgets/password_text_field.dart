import 'package:flutter/material.dart';
import 'package:spend_wise/core/utils/app_colors.dart';

class PasswordTextField extends StatefulWidget {
  final String text;
  const PasswordTextField({super.key, required this.text});

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          hintText: widget.text,
          hintStyle:  TextStyle(color: AppColors.secondaryFonts),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide:  BorderSide(color:  AppColors.primaryButtons),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide:  BorderSide(color: AppColors.primaryButtons),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide:  BorderSide(color: AppColors.primaryButtons),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              color:  AppColors.primaryButtons,
            ),
            onPressed: _togglePasswordVisibility,
          ),
        ),
      ),
    );
  }
}
