import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/shared/widgets/custom_app_bar.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/core/utils/app_strings.dart';
import 'package:spend_wise/features/settings/presentation/widgets/theme_selection.dart';

class ThemesScreenBody extends StatelessWidget {
  const ThemesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:   [
            CustomAppBar(text: AppStrings.themes, onPressed: () => context.go('/profileSettingsScreen'),),
            const SizedBox(height: 20,),
           const ThemeSelection(),
          ],
        ),
      ),
    );
  }
}