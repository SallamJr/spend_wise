import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/shared/widgets/gradient_button.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/core/utils/assets_manager.dart';
import 'package:spend_wise/generated/l10n.dart';

class GetStartedScreenBody extends StatelessWidget {
  const GetStartedScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImgAssets.getStarted),
            Text(
              S.of(context).knowWhereYour,
              style: TextStyle(
                color: AppColors.primaryFonts,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              S.of(context).moneyGoes,
              style: TextStyle(
                color: AppColors.primaryFonts,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              S.of(context).trackYourTransactionEasily,
              style: TextStyle(
                color: AppColors.secondaryFonts,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              S.of(context).withCategoriesAndFinancialReport,
              style: TextStyle(
                color: AppColors.secondaryFonts,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GradientButton(
                text: S.of(context).signup,
                onPressed: () => context.go('/signupScreen')),
            GradientButton(
                text: S.of(context).login,
                onPressed: () => context.go('/loginScreen')),
          ],
        ),
      ),
    );
  }
}
