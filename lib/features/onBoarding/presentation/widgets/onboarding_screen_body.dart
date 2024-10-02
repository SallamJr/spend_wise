import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/shared/widgets/gradient_button.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/core/utils/assets_manager.dart';

class OnboardingScreenBody extends StatelessWidget {
  const OnboardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.primary,
      // appBar: CustomAppBar(text: "Spend Wise"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImgAssets.onboarding),
            Text('Gain total control',style: TextStyle(color: AppColors.primaryFonts,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            ),),
             Text('of your money',style: TextStyle(color: AppColors.primaryFonts,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            ),),
            const SizedBox(height: 20,),
            Text('Become your own money manager',style: TextStyle(color: AppColors.secondaryFonts,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            ),),
            Text('and make every cent count',style: TextStyle(color: AppColors.secondaryFonts,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            ),),
            const SizedBox(height: 40,),
            GradientButton(text: 'Let\'s save money', onPressed: () => context.go('/getstartedScreen')),

          ],
        ),
      ),
    );
  }
}