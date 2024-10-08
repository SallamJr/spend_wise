import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/shared/widgets/gradient_button.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/core/utils/app_strings.dart';
import 'package:spend_wise/core/utils/assets_manager.dart';




class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImgAssets.welcome),
               Text(AppStrings.appName,style: TextStyle(color: AppColors.primaryFonts,
            fontSize: 34,
            fontWeight: FontWeight.bold,
            ),),
            const SizedBox(height: 20,),
            GradientButton(text: AppStrings.getStarted, onPressed: () => context.go('/onboardingScreen')),
          ],
        ),

        

      ),
    );
  }
}