import 'package:flutter/material.dart';
import 'package:spend_wise/core/shared/widgets/custom_app_bar.dart';
import 'package:spend_wise/core/shared/widgets/gradient_button.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/features/Authentication/presentation/widgets/email_text_form_field.dart';

class ForgetPasswordScreenBody extends StatelessWidget {
  const ForgetPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
          const CustomAppBar(text: 'Forget Password'),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('Don\'t worry. Enter your email and we\'ll send you a link to reset your password.',style: TextStyle(color: AppColors.primaryFonts,
            fontSize: 24),),
          ),
          EmailTextFormField(),
          GradientButton(text: 'Continue', onPressed: (){}),
          
          ],
        ),
      ),
    );
  }
}