import 'package:flutter/material.dart';
import 'package:spend_wise/core/utils/assets_manager.dart';

class BuildSplashScreenBody extends StatelessWidget {
  const BuildSplashScreenBody({
    super.key,
    required Animation<double>? fadeAnimation,
    required Animation<double>? scaleAnimation,
  })  : _fadeAnimation = fadeAnimation,
        _scaleAnimation = scaleAnimation;

  final Animation<double>? _fadeAnimation;
  final Animation<double>? _scaleAnimation;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background gradient
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green.shade100, Colors.white],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        // Centered logo with animations
        Center(
          child: FadeTransition(
            opacity: _fadeAnimation!,
            child: ScaleTransition(
              scale: _scaleAnimation!,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    ImgAssets.arcoLogo, // Use your SVG/PNG logo path here
                    width: 200,
                    height: 200,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
