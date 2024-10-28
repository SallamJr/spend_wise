import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/components/custom_app_bar.dart';
import 'package:spend_wise/core/components/gradient_button.dart';
import 'package:spend_wise/core/utils/assets_manager.dart';
import 'package:spend_wise/generated/l10n.dart';

class EmailSentScreenBody extends StatelessWidget {
  const EmailSentScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            CustomAppBar(
              text: Localizely.of(context).emailVerification,
              onPressed: () => context.go('/loginScreen'),
            ),
            const Image(image: AssetImage(ImgAssets.email)),
            Text(
              Localizely.of(context).backToLoginTitle,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary, fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                Localizely.of(context).backToLoginDescription,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.surface, fontSize: 16),
              ),
            ),
            GradientButton(
                text: Localizely.of(context).backToLoginBtn,
                onPressed: () => context.go('/resetPasswordScreen')),
          ]),
        ));
  }
}
