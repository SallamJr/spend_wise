import 'package:flutter/material.dart';
import 'package:spend_wise/core/components/custom_app_bar.dart';

class ChangeLanguageNotificationsAppbar extends StatelessWidget {
  const ChangeLanguageNotificationsAppbar({super.key, 
    required this.onCancel,
  });

  final void Function() onCancel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: CustomAppBar(text: 'Notifications Language', onPressed: onCancel,),
        ),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }
}