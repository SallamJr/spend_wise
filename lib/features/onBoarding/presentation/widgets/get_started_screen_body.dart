import 'package:flutter/material.dart';
import 'package:spend_wise/core/shared/widgets/gradient_button.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
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
          Text('Know where your',style: TextStyle(color: AppColors.primaryFonts,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          ),),
          
          Text('money goes',style: TextStyle(color: AppColors.primaryFonts,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          ),),
          const SizedBox(height: 20,),
          Text('Track your transaction easily,',style: TextStyle(color: AppColors.secondaryFonts,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          ),),
          Text('with categories and financial report',style: TextStyle(color: AppColors.secondaryFonts,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          ),),
          const SizedBox(height: 40,),
          GradientButton(text: 'Sign Up', onPressed: (){}),
        
          GradientButton(text: 'Login', onPressed: (){}),
          
        ],
      ),),
    );
  }
}