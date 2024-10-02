import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/shared/widgets/custom_app_bar.dart';
import 'package:spend_wise/core/shared/widgets/custom_text_button.dart';
import 'package:spend_wise/core/shared/widgets/gradient_button.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/core/utils/assets_manager.dart';
import 'package:spend_wise/features/Authentication/presentation/widgets/email_text_form_field.dart';
import 'package:spend_wise/features/Authentication/presentation/widgets/password_text_field.dart';


class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               CustomAppBar(text: 'Login', onPressed: () => context.go('/getstartedScreen'),),
              const Image(image: AssetImage(ImgAssets.email)) ,
              EmailTextFormField(),
              const PasswordTextField(text: 'Password',),
              GradientButton(text: 'Login', onPressed: ()=> context.go('/homeScreen')),
              CustomTextButton(text:  'Forgot Password?', onPressed: (){}),
              CustomTextButton(text:  'Don\'t have an account yet ? Sign Up', onPressed: ()=> context.go('/signupScreen')),
            ],
          ),
        ),
      ),
    );
  }
}