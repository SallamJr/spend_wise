import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:spend_wise/generated/l10n.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: GNav(
          rippleColor: AppColors.unSelectedIcons, // Ripple effect color
          hoverColor: AppColors.unSelectedIcons, // Hover effect color
          haptic: true, // Haptic feedback
          tabBorderRadius: 15,
          curve: Curves.easeInOut, // Animation curve
          duration: const Duration(milliseconds: 500), // Animation duration
          gap: 8, // Gap between icon and text
          color: AppColors.pressedIcons
              .withOpacity(0.5), // Unselected icon and text color
          activeColor: AppColors.pressedIcons,
          // Colors.red,        // Selected icon and text color
          iconSize: 32, // Icon size
          tabBackgroundColor: AppColors.backgroundIcons,

          //  Colors.red.withOpacity(0.1), // Background color of selected tab
          padding: const EdgeInsets.symmetric(
              horizontal: 20, vertical: 5), // Tab padding
          tabs: [
            GButton(
              icon: IconlyBold.home, // Home icon
              text: Localizely.of(context).home,
              onPressed: () => context.go('/homeScreen'),
            ),
            GButton(
              icon: IconlyBold.category, // Search icon
              text: Localizely.of(context).category,
              onPressed: () => context.go('/categoryScreen'),
            ),
            GButton(
              icon: IconlyBold
                  .wallet, // Orders icon (replace heart with list icon)
              text: Localizely.of(context).expenses,
              onPressed: () => context.go('/expensesScreen'),
            ),
            GButton(
              icon: IconlyBold.profile, // Account icon
              text: Localizely.of(context).profile,
              onPressed: () => context.go('/settingsScreen'),
            ),
          ],
        ),
      ),
    );
  
  }
}
