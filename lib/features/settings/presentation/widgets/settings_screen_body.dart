import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/widgets/custom_app_bar.dart';
import 'package:spend_wise/core/widgets/custom_bottom_nav_bar.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/features/settings/presentation/widgets/custom_list_tile.dart';
import 'package:spend_wise/generated/l10n.dart';

class SettingsScreenBody extends StatelessWidget {
  const SettingsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavBar(),
      backgroundColor: AppColors.primary,
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
                backgroundColor: AppColors.secondary,
                child: Icon(Icons.add_a_photo,
                    size: 65, color: AppColors.primaryFonts),
              ),
              const SizedBox(height: 20),
              CustomListTile(
                  text: Localizely.of(context).account,
                  onPressed: () {},
                  icon: IconlyBold.profile),
              Divider(
                color: AppColors.unSelectedIcons,
              ),
              CustomListTile(
                text: Localizely.of(context).profileSettings,
                onPressed: () => context.go('/profileSettingsScreen'),
                icon: IconlyBold.setting,
              ),
              Divider(
                color: AppColors.unSelectedIcons,
              ),
              CustomListTile(
                  text: Localizely.of(context).exportData,
                  onPressed: () {},
                  icon: IconlyBold.upload),
              Divider(
                color: AppColors.unSelectedIcons,
              ),
              CustomListTile(
                  text: Localizely.of(context).about,
                  onPressed: () {},
                  icon: IconlyBold.infoSquare),
              Divider(
                color: AppColors.unSelectedIcons,
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
