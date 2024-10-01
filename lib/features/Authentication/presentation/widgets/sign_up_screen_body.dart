import 'package:flutter/material.dart';
import 'package:spend_wise/core/shared/widgets/custom_app_bar.dart';
import 'package:spend_wise/core/shared/widgets/custom_text_button.dart';
import 'package:spend_wise/core/shared/widgets/custom_text_form_field.dart';
import 'package:spend_wise/core/shared/widgets/gradient_button.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/features/Authentication/presentation/widgets/email_text_form_field.dart';
import 'package:spend_wise/features/Authentication/presentation/widgets/google_sign_with.dart';
import 'package:spend_wise/features/Authentication/presentation/widgets/password_text_field.dart';

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         backgroundColor: AppColors.primary,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CustomAppBar(text: 'Sign Up'),
             CustomTextFormField(text: "First Name"),
             CustomTextFormField(text: "Last Name"),
              EmailTextFormField(),
              const PasswordTextField(text: 'Password',),
              const PasswordTextField(text: 'Confirm Password',),
              GradientButton(text: 'Sign Up', onPressed: (){}),
              const SizedBox(height: 8,),
              Text("Or With",style: TextStyle(color: AppColors.secondaryFonts,fontWeight: FontWeight.w600,fontSize: 15),),
              GoogleSignWith(text: 'Sign Up with Google', onPressed: (){}),
              CustomTextButton(text: 'Aleardy have an account?  Login', onPressed:(){}),
              
            ],
          ),
        )
        
      ),
    );
  }
}