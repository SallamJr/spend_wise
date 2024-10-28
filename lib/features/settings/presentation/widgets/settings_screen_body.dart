import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/components/custom_app_bar.dart';
import 'package:spend_wise/core/components/custom_bottom_nav_bar.dart';
import 'package:spend_wise/features/settings/presentation/widgets/custom_list_tile.dart';
import 'package:spend_wise/generated/l10n.dart';

class SettingsScreenBody extends StatelessWidget {
  const SettingsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavBar(),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomAppBar(
                text: Localizely.of(context).profile,
                onPressed: () => context.go('/homeScreen'),
              ),
              const SizedBox(height: 16),
              CircleAvatar(
                radius: 80,
                backgroundColor: Theme.of(context).colorScheme.onTertiaryContainer,
                child: Icon(Icons.add_a_photo,
                    size: 65, color: Theme.of(context).colorScheme.onPrimary),
              ),
              const SizedBox(height: 20),
              CustomListTile(
                  text: Localizely.of(context).account,
                  onPressed: () {},
                  icon: IconlyBold.profile),
              Divider(
                color: Theme.of(context).colorScheme.outline,
              ),
              CustomListTile(
                text: Localizely.of(context).profileSettings,
                onPressed: () => context.go('/profileSettingsScreen'),
                icon: IconlyBold.setting,
              ),
              Divider(
                color: Theme.of(context).colorScheme.outline,
              ),
              CustomListTile(
                  text: Localizely.of(context).exportData,
                  onPressed: () {},
                  icon: IconlyBold.upload),
              Divider(
                color: Theme.of(context).colorScheme.outline,
              ),
              CustomListTile(
                  text: Localizely.of(context).about,
                  onPressed: () {},
                  icon: IconlyBold.infoSquare),
              Divider(
                color: Theme.of(context).colorScheme.outline,
              ),
              CustomListTile(
                text: Localizely.of(context).logout,
                icon: IconlyBold.logout,
                onPressed: () => context.go('/welcomeScreen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
