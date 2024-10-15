import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/widgets/custom_bottom_nav_bar.dart';
import 'package:spend_wise/core/widgets/custom_check_box.dart';
import 'package:spend_wise/core/widgets/custom_text_form_field.dart';
import 'package:spend_wise/core/widgets/gradient_button.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/generated/l10n.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class ExpensesScreenBody extends StatelessWidget {
  const ExpensesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavBar(),
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomAppBar(
              text: Localizely.of(context).addExpense,
              onPressed: () => context.go('/categoryScreen'),
            ),
            CustomTextFormField(
              text: Localizely.of(context).expenseName,
            ),
            CustomTextFormField(
              text: Localizely.of(context).expenseValue,
            ),
            CustomTextFormField(
              text: Localizely.of(context).expenseCategory,
            ),
            CustomTextFormField(
              text: Localizely.of(context).expenseDescription,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Localizely.of(context).expenses,
                      style: TextStyle(color: AppColors.primaryFonts),
                    ),
                    const CustomCheckbox(),
                  ]),
            ),
            GradientButton(
                text: Localizely.of(context).add,
                onPressed: () => context.go('/homeScreen')),
          ],
        ),
      ),
    );
  }
}
