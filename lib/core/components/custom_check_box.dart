import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Theme.of(context).colorScheme.onPrimaryContainer,
      checkColor: Theme.of(context).colorScheme.primary,
      value: _isChecked,
      onChanged: (bool? value) {
        setState(() {
          _isChecked = value!;
        });
      },
    );
  }
}
