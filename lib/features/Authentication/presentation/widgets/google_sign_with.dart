import 'package:flutter/material.dart';
import 'package:spend_wise/core/utils/assets_manager.dart';

class GoogleSignWith extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const GoogleSignWith({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
         decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
              colors: [Theme.of(context).colorScheme.primary, Theme.of(context).colorScheme.primary],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: 
        ElevatedButton(
              
              style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              //Colors.transparent,
              shadowColor: Theme.of(context).colorScheme.onSecondary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
            ),
              onPressed: onPressed,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(
                    ImgAssets.google,
                    height: 30.0,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    text,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}