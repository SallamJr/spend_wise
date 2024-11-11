import 'package:flutter/material.dart';


class BuildOnboardingPage extends StatelessWidget {
  const BuildOnboardingPage({super.key, 
    required this.context,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.isLastPage,
    required this.onNextPressed,
  });

  final BuildContext context;
  final String imagePath;
  final String title;
  final String description;
  final bool isLastPage;
  final VoidCallback onNextPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 300), // Adjust height as needed
          const SizedBox(height: 24),
          Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     // Page indicator (adjust for number of pages)
          //     Icon(Icons.circle, size: 10, color: isLastPage ? Colors.grey : Colors.green),
          //     const SizedBox(width: 8),
          //     Icon(Icons.circle, size: 10, color: isLastPage ? Colors.grey : Colors.green),
          //     const SizedBox(width: 8),
          //     Icon(Icons.circle, size: 10, color: isLastPage ? Colors.green : Colors.grey),
          //   ],
          // ),
          // const SizedBox(height: 24),
          // ElevatedButton(
          //   onPressed: onNextPressed,
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.green,
          //     minimumSize: const Size(double.infinity, 48), // Full-width button
          //   ),
          //   child: Text(isLastPage ? 'Get Started' : 'Next'),
          // ),
          // const SizedBox(height: 24),
        ],
      ),
    );
  }
}