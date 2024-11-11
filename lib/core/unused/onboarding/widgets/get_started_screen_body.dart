import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/components/gradient_button.dart';
import 'package:spend_wise/core/utils/assets_manager.dart';
import 'package:spend_wise/generated/l10n.dart';

class GetStartedScreenBody extends StatelessWidget {
  const GetStartedScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImgAssets.dateOnboard),
            Text(
              Localizely.of(context).knowWhereYour,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              Localizely.of(context).moneyGoes,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              Localizely.of(context).trackYourTransactionEasily,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSecondary,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              Localizely.of(context).withCategoriesAndFinancialReport,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSecondary,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GradientButton(
                text: Localizely.of(context).signup,
                onPressed: () => context.go('/signupScreen')),
            GradientButton(
                text: Localizely.of(context).login,
                onPressed: () => context.go('/loginScreen')),
          ],
        ),
      ),
    );
  }
}
