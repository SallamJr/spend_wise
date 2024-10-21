import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/components/custom_app_bar.dart';
import 'package:spend_wise/core/components/custom_text_button.dart';
import 'package:spend_wise/core/components/gradient_button.dart';
import 'package:spend_wise/core/utils/assets_manager.dart';
import 'package:spend_wise/features/authentication/presentation/widgets/email_text_form_field.dart';
import 'package:spend_wise/features/authentication/presentation/widgets/password_text_field.dart';
import 'package:spend_wise/generated/l10n.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomAppBar(
                text: Localizely.of(context).login,
                onPressed: () => context.go('/getstartedScreen'),
              ),
              const Image(image: AssetImage(ImgAssets.email)),
              EmailTextFormField(
                  //  controller: context.read<LoginCubit>().loginEmailController,
                  ),
              PasswordTextField(
                text: Localizely.of(context).password,
              ),
              GradientButton(
                  text: Localizely.of(context).login,
                  onPressed: () => context.go('/homeScreen')),
              CustomTextButton(
                  text: Localizely.of(context).forgotPasswordQuestion,
                  onPressed: () => context.go('/forgotPasswordScreen')),
              CustomTextButton(
                  text: Localizely.of(context).forgotPasswordInstruction,
                  onPressed: () => context.go('/signupScreen')),
            ],
          ),
        ),
      ),
    );
  }
}
