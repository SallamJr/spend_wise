import 'package:flutter/material.dart';
import 'package:spend_wise/core/utils/app_colors.dart';

class ThemeSelection extends StatefulWidget {
  const ThemeSelection({super.key});

  @override
  ThemeSelectionState createState() => ThemeSelectionState();
}

class ThemeSelectionState extends State<ThemeSelection> {
  String selectedTheme = 'Light';

  final List<Map<String, String>> themes = [
    {'name': 'Light', 'value': 'Light'},
    {'name': 'Dark', 'value': 'Dark'},
  ];

  Widget themeWidget(String name, String value) {
    return ListTile(
      title: Text(name, style: TextStyle(color: AppColors.primaryFonts, fontWeight: FontWeight.bold, fontSize: 18),),
      trailing: Radio(
        value: value,
        groupValue: selectedTheme,
        activeColor: AppColors.pressedIcons,
        onChanged: (String? newValue) {
          setState(() {
            selectedTheme = newValue!;
          });
        },
      ),
      onTap: () {
        setState(() {
          selectedTheme = value;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: themes.length,
        itemBuilder: (context, index) {
          final theme = themes[index];
          return themeWidget(theme['name']!, theme['value']!);
        },
      ),
    );
  }
}
