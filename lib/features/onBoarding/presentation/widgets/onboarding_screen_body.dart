import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/config/routes/app_routes.dart';
import 'package:spend_wise/core/utils/assets_manager.dart';
import 'package:spend_wise/features/onboarding/presentation/widgets/build_onboarding_page.dart';
import 'package:spend_wise/features/onboarding/presentation/widgets/positioned_onboard.dart';

class OnboardingScreenBody extends StatelessWidget {
  final PageController _pageController = PageController();

  OnboardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PageView(
        controller: _pageController,
        children: [
          BuildOnboardingPage(
            context: context,
            imagePath: ImgAssets.orderRideOnboard,
            title: 'Get ARCO App',
            description:
                'ARCO is your trusted platform for booking a professional home services per hour!',
            isLastPage: false,
            onNextPressed: () {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
          ),
          BuildOnboardingPage(
            context: context,
            imagePath: ImgAssets.dateOnboard,
            title: 'Book your visit now!',
            description:
                'Book & pay via the ARCO application, choose your preferred dates and time, and our professional cleaners will take care of the rest.',
            isLastPage: false,
            onNextPressed: () {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
          ),
          BuildOnboardingPage(
            context: context,
            imagePath: ImgAssets.groupOnboard,
            title: 'Relax and have fun',
            description:
                'Your cleaner will arrive within the dropping time window to get your home cleaned.',
            isLastPage: true,
            onNextPressed: () {
              context.go(AppRoutes.loginRoute);
            },
          ),
        ],
      ),
      PositionedOnboard(pageController: _pageController),
    ]);
  }
}


