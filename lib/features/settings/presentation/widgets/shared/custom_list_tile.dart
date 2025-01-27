import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData icon;
  const CustomListTile({
    super.key,
    required this.text,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          icon,
          color: Theme.of(context).colorScheme.onPrimary,
          size: 32,
        ),
        title: Text(
          text,
          style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
        onTap: onPressed);
  }
}
