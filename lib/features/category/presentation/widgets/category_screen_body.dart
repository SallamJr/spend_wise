import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/shared/widgets/custom_app_bar.dart';
import 'package:spend_wise/core/shared/widgets/custom_bottom_nav_bar.dart';
import 'package:spend_wise/core/shared/widgets/custom_text_form_field.dart';
import 'package:spend_wise/core/shared/widgets/gradient_button.dart';
import 'package:spend_wise/core/utils/app_strings.dart';

class CategoryScreenBody extends StatelessWidget {
  const CategoryScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar:  const CustomBottomNavBar(),
       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomAppBar(text: AppStrings.addCategory, onPressed: ()=> context.go('/homeScreen')),
            CustomTextFormField(text: AppStrings.categoryName,),
            GradientButton(text: AppStrings.add, onPressed: ()=> context.go('/expensesScreen'))
            
          ]
        ),
    ),
    );
  }
}