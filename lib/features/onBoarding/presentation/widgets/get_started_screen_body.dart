import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/shared/widgets/gradient_button.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/core/utils/app_strings.dart';
import 'package:spend_wise/core/utils/assets_manager.dart';

class GetStartedScreenBody extends StatelessWidget {
  const GetStartedScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.asset(ImgAssets.getStarted),
          Text(AppStrings.knowWhereYour,style: TextStyle(color: AppColors.primaryFonts,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          ),),
          
          Text(AppStrings.moneyGoes,style: TextStyle(color: AppColors.primaryFonts,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          ),),
          const SizedBox(height: 20,),
          Text(AppStrings.trackYourTransactionEasily,style: TextStyle(color: AppColors.secondaryFonts,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          ),),
          Text(AppStrings.withCategoriesAndFinancialReport,style: TextStyle(color: AppColors.secondaryFonts,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          ),),
          const SizedBox(height: 40,),
          GradientButton(text: AppStrings.signup, onPressed: () => context.go('/signupScreen')),
        
          GradientButton(text: AppStrings.login, onPressed: () => context.go('/loginScreen')),
          
        ],
      ),),
    );
  }
}