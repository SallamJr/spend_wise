import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/widgets/custom_app_bar.dart';
import 'package:spend_wise/core/widgets/custom_text_button.dart';
import 'package:spend_wise/core/widgets/custom_text_form_field.dart';
import 'package:spend_wise/core/widgets/gradient_button.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/features/Authentication/presentation/widgets/email_text_form_field.dart';
import 'package:spend_wise/features/Authentication/presentation/widgets/google_sign_with.dart';
import 'package:spend_wise/features/Authentication/presentation/widgets/password_text_field.dart';
import 'package:spend_wise/generated/l10n.dart';

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
                CustomAppBar(
                    text: Localizely.of(context).signup,
                    onPressed: () => context.go('/getstartedScreen')),
                CustomTextFormField(text: Localizely.of(context).firstName),
                CustomTextFormField(text: Localizely.of(context).lastName),
                EmailTextFormField(),
                PasswordTextField(
                  text: Localizely.of(context).password,
                ),
                PasswordTextField(
                  text: Localizely.of(context).confirmPassword,
                ),
                GradientButton(
                    text: Localizely.of(context).signup,
                    onPressed: () => context.go('/homeScreen')),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  Localizely.of(context).orWith,
                  style: TextStyle(
                      color: AppColors.secondaryFonts,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
                GoogleSignWith(
                    text: Localizely.of(context).googleSignWith,
                    onPressed: () => context.go('/homeScreen')),
                CustomTextButton(
                    text: Localizely.of(context).havingAccount,
                    onPressed: () => context.go('/loginScreen')),
              ],
            ),
          )),
    );
  }
}
