import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:spend_wise/config/routes/app_routes.dart';
import 'package:spend_wise/core/components/gradient_button.dart';

class PositionedOnboard extends StatelessWidget {
  const PositionedOnboard({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: Column(children: [
        SmoothPageIndicator(
            controller: _pageController, // PageController
            count: 3,
            effect: const ExpandingDotsEffect(
              // ignore: use_full_hex_values_for_flutter_colors
              activeDotColor: Color(0xff2077361),
              dotColor: Color(0xFFD1D1D1),
              dotHeight: 7,
              dotWidth: 13,
              radius: 16,
            ), // your preferred effect
            onDotClicked: (index) {}),
        const SizedBox(height: 20),
        GradientButton(
          text:
              _pageController.hasClients && _pageController.page?.round() == 2
                  ? 'Get Started'
                  : 'Next',
          onPressed: () {
            if (_pageController.hasClients &&
                _pageController.page?.round() == 2) {
              // Navigate to login on the last page
              context.go(AppRoutes.loginRoute);
            } else {
              // Go to the next page
              _pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            }
          },
        ),
      ]),
    );
  }
}