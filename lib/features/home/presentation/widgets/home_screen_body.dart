import 'package:flutter/material.dart';
import 'package:spend_wise/core/components/custom_app_bar.dart';
import 'package:spend_wise/core/components/custom_bottom_nav_bar.dart';
import 'package:spend_wise/features/home/presentation/widgets/custom_card.dart';
import 'package:spend_wise/features/home/presentation/widgets/custom_floating_action_button.dart';
import 'package:spend_wise/generated/l10n.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      bottomNavigationBar: const CustomBottomNavBar(),
      floatingActionButton: const CustomFloatingActionButton(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          CustomAppBar(
            text: Localizely.of(context).home,
            onPressed: () {},
          ),
          CustomCard(text: Localizely.of(context).categoryName),
        ]),
      ),
    );
  }
}
