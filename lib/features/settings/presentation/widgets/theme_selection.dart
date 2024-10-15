import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spend_wise/core/controllers/theme_cubit.dart';
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

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
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
          color: AppColors.primaryFonts,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      trailing: Radio(
        value: value,
        groupValue: selectedTheme,
        activeColor: AppColors.pressedIcons,
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







// import 'package:flutter/material.dart';
// import 'package:spend_wise/core/utils/app_colors.dart';

// class ThemeSelection extends StatefulWidget {
//   const ThemeSelection({super.key});

//   @override
//   ThemeSelectionState createState() => ThemeSelectionState();
// }

// class ThemeSelectionState extends State<ThemeSelection> {
//   String selectedTheme = 'Light';

//   final List<Map<String, String>> themes = [
//     {'name': 'Light', 'value': 'Light'},
//     {'name': 'Dark', 'value': 'Dark'},
//   ];

//   Widget themeWidget(String name, String value) {
//     return ListTile(
//       title: Text(name, style: TextStyle(color: AppColors.primaryFonts, fontWeight: FontWeight.bold, fontSize: 18),),
//       trailing: Radio(
//         value: value,
//         groupValue: selectedTheme,
//         activeColor: AppColors.pressedIcons,
//         onChanged: (String? newValue) {
//           setState(() {
//             selectedTheme = newValue!;
//           });
//         },
//       ),
//       onTap: () {
//         setState(() {
//           selectedTheme = value;
//         });
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: ListView.builder(
//         itemCount: themes.length,
//         itemBuilder: (context, index) {
//           final theme = themes[index];
//           return themeWidget(theme['name']!, theme['value']!);
//         },
//       ),
//     );
//   }
// }
