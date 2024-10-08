import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/shared/widgets/custom_app_bar.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/core/utils/app_strings.dart';
import 'package:spend_wise/features/settings/presentation/widgets/currency_selection.dart';

class CurrencyScreenBody extends StatelessWidget {
  const CurrencyScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomAppBar(text: AppStrings.currency, onPressed: ()=> context.go('/profileSettingsScreen'),),
            const CurrencySelection(),
          ],
        ),
      ),
    );
  }
}