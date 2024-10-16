import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/widgets/custom_app_bar.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/features/settings/presentation/widgets/custom_list_tile.dart';
import 'package:spend_wise/generated/l10n.dart';

class ProfileSettingsScreenBody extends StatelessWidget {
  const ProfileSettingsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomAppBar(
              text: Localizely.of(context).profileSettings,
              onPressed: () => context.go('/settingsScreen'),
            ),
            const SizedBox(height: 20),
            CustomListTile(
              text: Localizely.of(context).language,
              onPressed: () => context.go('/languageScreen'),
              icon: Icons.language,
            ),
            Divider(
              color: AppColors.unSelectedIcons,
            ),
            const SizedBox(height: 20),
            CustomListTile(
              text: Localizely.of(context).currency,
              onPressed: () => context.go('/currencyScreen'),
              icon: Icons.currency_exchange,
            ),
            Divider(
              color: AppColors.unSelectedIcons,
            ),
            const SizedBox(height: 20),
            CustomListTile(
                text: Localizely.of(context).themes,
                onPressed: () => context.go('/themesScreen'),
                icon: Icons.light_mode),
          ],
        ),
      ),
    );
  }
}
