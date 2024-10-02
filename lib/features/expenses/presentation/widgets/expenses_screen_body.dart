import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/shared/widgets/custom_bottom_nav_bar.dart';
import 'package:spend_wise/core/shared/widgets/custom_check_box.dart';
import 'package:spend_wise/core/shared/widgets/custom_text_form_field.dart';
import 'package:spend_wise/core/shared/widgets/gradient_button.dart';
import 'package:spend_wise/core/utils/app_colors.dart';

import '../../../../core/shared/widgets/custom_app_bar.dart';

class ExpensesScreenBody extends StatelessWidget {
  const ExpensesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       bottomNavigationBar: const CustomBottomNavBar(),
       backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
mainAxisAlignment: MainAxisAlignment.start,
          children: [
CustomAppBar(text: 'Add Expenses', onPressed: () => context.go('/categoryScreen'),),
CustomTextFormField(text: "Expense Name",),
CustomTextFormField(text: "Expense Value",),
CustomTextFormField(text: "Expense Category",),
CustomTextFormField(text: "Expense Description",),
Padding(
  padding: const EdgeInsets.all(10.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("Expenses",style: TextStyle(color: AppColors.primaryFonts),),
      const CustomCheckbox(),
  
    ]
  ),
),
GradientButton(text: 'Add', onPressed: ()=> context.go('/homeScreen')),
          ],
        ),
      ),
    );
  }
}