import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/core/shared/widgets/custom_app_bar.dart';
import 'package:spend_wise/core/shared/widgets/custom_bottom_nav_bar.dart';
import 'package:spend_wise/core/shared/widgets/custom_text_form_field.dart';
import 'package:spend_wise/core/shared/widgets/gradient_button.dart';
import 'package:spend_wise/generated/l10n.dart';

class CategoryScreenBody extends StatelessWidget {
  const CategoryScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          CustomAppBar(
              text: S.of(context).addCategory,
              onPressed: () => context.go('/homeScreen')),
          CustomTextFormField(
            text: S.of(context).categoryName,
          ),
          GradientButton(
              text: S.of(context).add,
              onPressed: () => context.go('/expensesScreen'))
        ]),
      ),
    );
  }
}
