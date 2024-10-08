import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/shared/widgets/custom_app_bar.dart';
import 'package:spend_wise/core/shared/widgets/custom_text_button.dart';
import 'package:spend_wise/core/shared/widgets/custom_text_form_field.dart';
import 'package:spend_wise/core/shared/widgets/gradient_button.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/core/utils/app_strings.dart';
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
               CustomAppBar(text: AppStrings.signup, onPressed: () => context.go('/getstartedScreen')),
             CustomTextFormField(text: AppStrings.firstName),
             CustomTextFormField(text: AppStrings.lastName),
              EmailTextFormField(),
              const PasswordTextField(text: AppStrings.password,),
              const PasswordTextField(text: AppStrings.confirmPassword,),
              GradientButton(text: AppStrings.signup, onPressed: ()=> context.go('/homeScreen')),
              const SizedBox(height: 8,),
              Text(AppStrings.orWith,style: TextStyle(color: AppColors.secondaryFonts,fontWeight: FontWeight.w600,fontSize: 15),),
              GoogleSignWith(text: AppStrings.googleSignWith, onPressed: ()=> context.go('/homeScreen')),
              CustomTextButton(text: AppStrings.havingAccount, onPressed:()=> context.go('/loginScreen')),
              
            ],
          ),
        )
        
      ),
    );
  }
}