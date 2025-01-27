import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spend_wise/core/controllers/theme_cubit.dart';
import 'package:spend_wise/generated/l10n.dart';

class ThemeSelection extends StatefulWidget {
  const ThemeSelection({super.key});

  @override
  ThemeSelectionState createState() => ThemeSelectionState();
}

class ThemeSelectionState extends State<ThemeSelection> {
  String selectedTheme = 'Light';

  List<Map<String, String>> themes = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Initialize themes list here
    themes = [
      {'name': Localizely.of(context).lightMode, 'value': 'Light'},
      {'name': Localizely.of(context).darkMode, 'value': 'Dark'},
    ];

    // Get current theme mode from the cubit state and update selectedTheme
    final isDarkMode =
        context.read<ThemeCubit>().state.themeMode == ThemeMode.dark;
    selectedTheme = isDarkMode ? 'Dark' : 'Light';
  }

  Widget themeWidget(String name, String value) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      trailing: Radio(
        value: value,
        groupValue: selectedTheme,
        activeColor: Theme.of(context).colorScheme.onPrimaryContainer,
        onChanged: (String? newValue) {
          setState(() {
            selectedTheme = newValue!;
            _changeTheme(newValue);
          });
        },
      ),
      onTap: () {
        setState(() {
          selectedTheme = value;
          _changeTheme(value);
        });
      },
    );
  }

  // Method to handle theme change via cubit
  void _changeTheme(String selectedTheme) {
    final themeCubit = context.read<ThemeCubit>();
    if (selectedTheme == 'Dark') {
      themeCubit.setDarkTheme();
    } else {
      themeCubit.setLightTheme();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: themes.length,
      itemBuilder: (context, index) {
        final theme = themes[index];
        return themeWidget(theme['name']!, theme['value']!);
      },
    );
  }
}

