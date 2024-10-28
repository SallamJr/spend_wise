import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/components/custom_app_bar.dart';
import 'package:spend_wise/features/settings/presentation/widgets/currency_selection.dart';
import 'package:spend_wise/generated/l10n.dart';

class CurrencyScreenBody extends StatelessWidget {
  const CurrencyScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      //  AppColors.primary,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomAppBar(
              text: Localizely.of(context).currency,
              onPressed: () => context.go('/profileSettingsScreen'),
            ),
            const Expanded(child: CurrencySelection()),
          ],
        ),
      ),
    );
  }
}
