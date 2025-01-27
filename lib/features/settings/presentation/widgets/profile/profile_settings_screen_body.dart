import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/config/routes/app_routes.dart';
import 'package:spend_wise/core/components/custom_app_bar.dart';
import 'package:spend_wise/features/settings/presentation/widgets/shared/custom_list_tile.dart';
import 'package:spend_wise/generated/l10n.dart';

class ProfileSettingsScreenBody extends StatelessWidget {
  const ProfileSettingsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
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
              color: Theme.of(context).colorScheme.outline,
            ),
            const SizedBox(height: 20),
            CustomListTile(
              text: Localizely.of(context).currency,
              onPressed: () => context.go('/currencyScreen'),
              icon: Icons.currency_exchange,
            ),
            Divider(
              color: Theme.of(context).colorScheme.outline,
            ),
            const SizedBox(height: 20),
            CustomListTile(
                text: Localizely.of(context).themes,
                onPressed: () => context.go('/themesScreen'),
                icon: Icons.light_mode),
                Divider(
              color: Theme.of(context).colorScheme.outline,
            ),
            CustomListTile(
                text: 'Notifications Language',
                onPressed: () => context.go(AppRoutes.notificationsLanguageRoute),
                icon: Icons.light_mode),
                  Divider(
              color: Theme.of(context).colorScheme.outline,
            ),
            CustomListTile(
                text: 'My Investments',
                onPressed: () => context.go(AppRoutes.myInvestmentsRoute),
                icon: Icons.light_mode),
                  Divider(
              color: Theme.of(context).colorScheme.outline,
            ),
            CustomListTile(
                text: 'Return Requests',
                onPressed: () => context.go(AppRoutes.retureRequestsRoute),
                icon: Icons.light_mode),
                  Divider(
              color: Theme.of(context).colorScheme.outline,
            ),
          ],
        ),
      ),
    );
  }
}
