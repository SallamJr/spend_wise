import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/widgets/custom_app_bar.dart';
import 'package:spend_wise/core/widgets/gradient_button.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/features/Authentication/presentation/widgets/password_text_field.dart';
import 'package:spend_wise/generated/l10n.dart';

class ResetPasswordScreenBody extends StatelessWidget {
  const ResetPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomAppBar(
                text: Localizely.of(context).resetPassword,
                onPressed: () => context.go('/forgotPasswordScreen'),
              ),
              PasswordTextField(
                text: Localizely.of(context).newPassword,
              ),
              PasswordTextField(
                text: Localizely.of(context).retypeNewPassword,
              ),
              GradientButton(
                  text: Localizely.of(context).continueBtn,
                  onPressed: () => context.go('/loginScreen')),
            ],
          ),
        ));
  }
}
