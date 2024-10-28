import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/components/custom_app_bar.dart';
import 'package:spend_wise/core/components/custom_bottom_nav_bar.dart';
import 'package:spend_wise/core/components/custom_text_form_field.dart';
import 'package:spend_wise/core/components/gradient_button.dart';
import 'package:spend_wise/generated/l10n.dart';

class CategoryScreenBody extends StatelessWidget {
  const CategoryScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary, 
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          CustomAppBar(
              text: Localizely.of(context).addCategory,
              onPressed: () => context.go('/homeScreen')),
          CustomTextFormField(
            text: Localizely.of(context).categoryName,
          ),
          GradientButton(
              text: Localizely.of(context).add,
              onPressed: () => context.go('/expensesScreen'))
        ]),
      ),
    );
  }
}
