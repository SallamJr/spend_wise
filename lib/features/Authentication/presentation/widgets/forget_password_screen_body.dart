import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/components/custom_app_bar.dart';
import 'package:spend_wise/core/components/gradient_button.dart';
import 'package:spend_wise/features/authentication/presentation/widgets/email_text_form_field.dart';
import 'package:spend_wise/generated/l10n.dart';

class ForgotPasswordScreenBody extends StatelessWidget {
  const ForgotPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomAppBar(
              text: Localizely.of(context).forgotPassword,
              onPressed: () => context.go('/loginScreen'),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                Localizely.of(context).forgotPasswordDescription,
                style: TextStyle(color: Theme.of(context).colorScheme.surface, fontSize: 24),
              ),
            ),
            EmailTextFormField(),
            GradientButton(
                text: Localizely.of(context).continueBtn,
                onPressed: () => context.go('/emailSentScreen')),
          ],
        ),
      ),
    );
  }
}
