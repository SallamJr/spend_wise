import 'package:flutter/material.dart';
import 'package:spend_wise/core/shared/widgets/custom_app_bar.dart';
import 'package:spend_wise/core/shared/widgets/custom_bottom_nav_bar.dart';
import 'package:spend_wise/features/home/presentation/widgets/custom_card.dart';
import 'package:spend_wise/features/home/presentation/widgets/custom_floating_action_button.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavBar(),
      floatingActionButton: const CustomFloatingActionButton(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomAppBar(text: 'Home', onPressed: () {  },),
            const CustomCard(text: "march"),
            
          ]
        ),
    ),
    );
  }
}