// import 'package:flutter/material.dart';
// import 'package:spend_wise/core/utils/app_colors.dart';

// class CustomTextField extends StatelessWidget {
//   final String text;
//   const CustomTextField({super.key, required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: TextField(
//         decoration: InputDecoration(
//           hintText: text,
//           hintStyle:  TextStyle(color: AppColors.secondaryFonts),
//           filled: true,
//           fillColor: AppColors.primary,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(30.0),
//             borderSide:  BorderSide(color: AppColors.primaryButtons),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(30.0),
//             borderSide:  BorderSide(color: AppColors.primaryButtons),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(30.0),
//             borderSide:  BorderSide(color: AppColors.primaryButtons),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:spend_wise/core/shared/functions/custom_snack_bar.dart';
import 'package:spend_wise/core/utils/app_colors.dart';

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
            hintText: 'Email',
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
              showCustomSnackbar(context, 'Please enter your email');
              return 'Please enter your email';
            }
            // Regular expression for email validation
            final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
            if (!emailRegex.hasMatch(value)) {
              showCustomSnackbar(context, 'Please enter a valid email address');
              return 'Please enter a valid email address';
            }
            return null;
          },
        ),
      ),
    );
  }
}
